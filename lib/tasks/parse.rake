data = File.expand_path(File.dirname(__FILE__) + '/../../data')
data_file = "#{data}/NSPDC_AUG_2008_UK_100M.txt"
postcode_file = "#{data}/postcodes.txt"

namespace :fymp do

  desc "Populate data for postcode and constituency ID in DB"
  task :populate => :environment do
    unless File.exist?(postcode_file)
      $stderr.puts "Data file not found: #{postcode_file}"
    else
      start_timing
      post_codes = []
      IO.foreach(postcode_file) do |line|
        code = line[0..6]
        constituency_id = line[8..10]
        post_codes << [code, constituency_id]
      end
      log_duration

      Postcode.delete_all
      columns = [:code, :constituency_id]

      post_codes.in_groups_of(1000) do |codes|
        start_timing
        Postcode.import columns, codes
        log_duration
      end
    end
  end

  desc "Parse data file for postcode and constituency ID *only*"
  task :parse do
    unless File.exist?(data_file)
      $stderr.puts "Data file not found: #{data_file}"
    else
      start_timing
      post_codes = []
      blank_date = '      '
      blank_code = '   '
      new_line = "\n"
      space = ' '

      IO.foreach(data_file) do |line|
        termination_date = line[29..34]
        if termination_date == blank_date
          consistuency_code = line[62..64]
          unless consistuency_code == blank_code
            post_codes << line[0..6] << space << consistuency_code
            post_codes << new_line
          end
        end
      end
      log_duration

      start_timing
      File.open(postcode_file,'w') do |file|
        file.write(post_codes.join(''))
      end
      log_duration
    end
  end

  def start_timing
    @start = Time.now
  end

  def log_duration
    duration = Time.now - @start
    puts "duration: #{duration}"
  end
end

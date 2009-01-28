class PostcodesController < ApplicationController

  def index
    search_term = params[:search_term]

    @postcode_count = Postcode.count
    @constituency_count = Constituency.count
    @last_search_term = flash[:last_search_term]

    unless search_term.blank?
      postcode = Postcode.find_postcode_by_code(search_term)

      if postcode
        redirect_to :action=>'show', :postcode => postcode.code
      else
        stripped_term = search_term.strip
        if stripped_term.size > 2
          constituencies = Constituency.find_all_name_or_member_name_matches(stripped_term)
          if constituencies.empty?
            flash[:not_found] = "Sorry: we couldn't find a constituency when we searched for <code>#{search_term}</code>. If you are an expatriate, in an overseas territory, a Crown dependency or in the Armed Forces without a postcode, this service cannot be used to find your MP."
            flash[:last_search_term] = search_term
            redirect_to :action=>'index'
          elsif constituencies.size == 1
            redirect_to :controller=>'constituencies', :action=>'show', :id => constituencies.first.friendly_id
          else
            redirect_to :controller=> 'constituencies', :action=>'show', :id => constituencies.collect(&:id).join('+'), :search_term => search_term
          end
        else
          flash[:not_found] = "Sorry: we need more than two letters to search"
          flash[:last_search_term] = search_term
          redirect_to :action=>'index'
        end
      end
    end
  end

  def show
    code = params[:postcode]
    postcode = Postcode.find_postcode_by_code(code)

    unless postcode
      postcode = Postcode.find_postcode_by_code(code.tr(' ',''))
      if postcode
        redirect_to :action=>'show', :postcode=>postcode.code
      else
        flash[:not_found] = "Sorry: we couldn't find a postcode when we searched for <code>#{code}</code>. If you are an expatriate, in an overseas territory, a Crown dependency or in the Armed Forces without a postcode, this service cannot be used to find your MP." if code
        flash[:last_search_term] = code
        params[:postcode] = nil
        redirect_to :action=>'index'
      end
    else
      @show_postcode_autodiscovery_links = true
      @url_for_this = url_for(:only_path=>false)
      respond_to do |format|
        format.html { @postcode = postcode; @constituency = postcode.constituency; flash[:postcode] = @postcode.code_with_space }
        format.xml  { @postcode = postcode; @constituency = postcode.constituency }
        format.json { render :json => postcode.to_json }
        format.js   { render :json => postcode.to_json }
        format.text { render :text => postcode.to_text }
        format.csv  { render :text => postcode.to_csv }
        format.yaml { render :text => postcode.to_output_yaml }
      end
    end
  end
end

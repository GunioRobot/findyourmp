require File.dirname(__FILE__) + '/../spec_helper'

describe PostcodeDistrict do

  assert_model_belongs_to :constituency

  before do
     @postcode_district = PostcodeDistrict.new
     @constituency_name = 'Islington South'
     @member_name = 'Edmund Husserl'
     @constituency = mock_model(Constituency, :id => 123, :ons_id =>801, :friendly_id => 'islington-south', :name => @constituency_name, :member_name => @member_name)
     @other_constituency = mock_model(Constituency, :id => 124)
     @postcode_district.stub!(:constituency).and_return @constituency
     @matches = [ @postcode_district ]
   end

  describe 'when asked to find postcode by district' do
    it 'should return match including its constituency' do
      district = 'N1'
      PostcodeDistrict.should_receive(:find).and_return @matches
      PostcodeDistrict.find_all_by_district(district).should == @matches

      @matches.size.should == 1
      @matches.first.constituency.should == @constituency
      @matches.first.constituency_name.should == @constituency.name
    end
    it 'should return empty array if given non-matching code' do
      district = 'EC2Z'
      PostcodeDistrict.should_receive(:find, :conditions => %Q|district = "EC2Z"|, :include => :constituency).and_return []
      PostcodeDistrict.find_all_by_district(district).should == []
    end
    it 'should return empty array if given code longer than 4 chars' do
      district = 'ECVVED'
      PostcodeDistrict.should_not_receive(:find)
      PostcodeDistrict.find_all_by_district(district).should == []
    end
    it 'should return empty array if given nil code' do
      district = nil
      PostcodeDistrict.should_not_receive(:find)
      PostcodeDistrict.find_all_by_district(district).should == []
    end
  end

end
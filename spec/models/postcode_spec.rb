require File.dirname(__FILE__) + '/../spec_helper'

describe Postcode do

  assert_model_belongs_to :constituency

  before do
    @postcode = Postcode.new
    @constituency_name = 'Islington South'
    @member_name = 'Tiberius Kirk'
    @constituency = mock_model(Constituency, :name => @constituency_name, :member_name => @member_name)
    @postcode.stub!(:constituency).and_return @constituency
  end

  describe 'when asked for postcode' do
    describe 'with 5 digit postcode' do
      it 'should return postcode with space in right place' do
        @postcode.stub!(:code).and_return 'N12SD'
        @postcode.code_with_space.should == 'N1 2SD'
      end
    end
    describe 'with 6 digit postcode' do
      it 'should return postcode with space in right place' do
        @postcode.stub!(:code).and_return 'SW12SD'
        @postcode.code_with_space.should == 'SW1 2SD'
      end
    end
    describe 'with 7 digit postcode' do
      it 'should return postcode with space in right place' do
        @postcode.stub!(:code).and_return 'WD257BG'
        @postcode.code_with_space.should == 'WD25 7BG'
      end
    end
  end
  describe 'with constituency' do
    describe 'when asked for constituency name' do
      it 'should return constituency name' do
        @postcode.constituency_name.should == @constituency_name
      end
    end
    describe 'and member is in constituency' do
      describe 'when asked for member name' do
        it 'should return member name' do
          @postcode.member_name.should == @member_name
        end
      end
    end
    describe 'and constituency is vacant' do
      before do
        @constituency.stub!(:member_name).and_return nil
      end
      describe 'when asked for member name' do
        it 'should return nil' do
          @postcode.member_name.should be_nil
        end
      end
    end
  end
end
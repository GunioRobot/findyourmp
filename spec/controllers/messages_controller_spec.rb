require File.dirname(__FILE__) + '/../spec_helper'

describe MessagesController do

  before do
    @constituency_id = 801
    @constituency_name_part = 'Islington'
    @constituency_name = 'Islington South'
    @member_name = 'Hon Biggens'
    @message_id = "12"
    @authenticity_token = 'gattaca'
    @message = mock(Message, :to_param => @message_id, :authenticity_token => @authenticity_token)
    collection = mock('array', :build=>@message)
    @constituency = mock_model(Constituency, :name => @constituency_name, :id => @constituency_id, :member_name => @member_name, :messages=>collection)
  end

  describe 'when asked for new message' do
    def do_get
      get :new, :constituency_id => @constituency_id
    end
    before do
      Constituency.stub!(:find).and_return @constituency
    end
    it 'should keep :postcode in flash memory' do
      flash = mock('flash')
      @controller.stub!(:flash).and_return flash
      flash.should_receive(:keep).with(:postcode)
      flash.stub!(:sweep)
      do_get
    end
  end

  describe 'when posted a new message' do
    def do_post
      post :create, :constituency_id => @constituency_id, :model => {}
    end
    it 'should redirect to show view' do
      Constituency.stub!(:find).with(@constituency_id.to_s).and_return @constituency
      Message.stub!(:new).and_return @message
      @message.should_receive(:save).and_return true
      do_post
      response.should redirect_to(constituency_message_url("801",@message_id))
    end
  end

  def handle_authentication_filter token
    @controller.should_receive(:authenticity_token).any_number_of_times.and_return token
    @message.stub!(:sent).and_return false
    @constituency.messages.should_receive(:find).with(@message_id).any_number_of_times.and_return(@message)
    Constituency.should_receive(:exists?).with(@constituency_id.to_s).and_return true
    Message.should_receive(:find_by_constituency_id_and_id).with(@constituency_id.to_s, @message_id).and_return @message
  end

  describe 'when posted message sent set to true' do
    def do_post token
      handle_authentication_filter token
      @message.should_receive(:authenticate).with(@authenticity_token).and_return true
      post :update, {:constituency_id => @constituency_id, :id => @message_id, :message => {:sent => '1'}}
    end

    it 'should set deliver message' do
      @message.should_receive(:deliver)
      do_post @authenticity_token
    end
    it 'should set flash[:message_sent] to true' do
      @message.stub!(:deliver)
      do_post @authenticity_token
      flash[:message_sent].should be_true
    end
    it 'should redirect to show action' do
      @message.stub!(:deliver)
      do_post @authenticity_token
      response.should redirect_to(constituency_message_url("801",@message_id))
    end
  end

  describe 'when asked to show a message' do
    def do_get token
      handle_authentication_filter token
      get :show, :constituency_id => @constituency_id, :id => @message_id
    end
    describe 'and authenticity_token matches' do
      it 'should show view' do
        @message.stub!(:sent).and_return false
        @message.should_receive(:authenticate).with(@authenticity_token).and_return true
        do_get @authenticity_token
        response.should be_success
      end
    end
    describe 'and authenticity_token doesn\'t match' do
      it 'should redirect to index' do
        bad_token = 'bad_token'
        @message.should_receive(:authenticate).with(bad_token).and_return false
        do_get bad_token
        response.code.should == '404'
      end
    end
  end
end

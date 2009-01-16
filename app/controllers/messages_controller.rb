class MessagesController < ResourceController::Base

  belongs_to :constituency

  before_filter :redirect_when_not_appropriate_to_show_message_form
  before_filter :respond_not_found_if_message_sent_or_bad_authenticity_token, :except => ['new']

  before_filter :ensure_current_constituency_url, :only => [:new, :index]

  def index
    if request.get?
      redirect_to_constituency_view
    else
      super
    end
  end

  def new
    super
    flash.keep(:postcode)
  end

  def edit
    if params[:authenticity_token]
      flash['authenticity_token'] = params[:authenticity_token]
      redirect_to :action => 'edit'
    else
      flash.keep('authenticity_token')
      super
    end
  end

  def create
    if params['message']
      params['message']['authenticity_token'] = params[:authenticity_token]
      flash['authenticity_token'] = params[:authenticity_token]
    end
    super
  end

  def update
    flash.keep('authenticity_token')
    send_message = params['message'] && params['message']['sent'] == '1'

    if send_message
      @message.deliver
      flash[:message_sent] = true
      redirect_to :action => 'show'
    else
      super
    end
  end

  def destroy
    render_not_found
  end

  private
    def redirect_to_constituency_view
      redirect_to :controller=>:constituencies, :action=>:show, :id=>params[:constituency_id]
    end

    def authenticity_token
      params[:authenticity_token] || flash['authenticity_token']
    end

    def redirect_when_not_appropriate_to_show_message_form
      begin
        if constituency = Constituency.find(params[:constituency_id])
          if !constituency.show_message_form?
            redirect_to_constituency_view
          end
        end
      rescue
        render_not_found
      end
    end

    def respond_not_found_if_message_sent_or_bad_authenticity_token
      if Constituency.exists?(params[:constituency_id]) && params[:id]
        @message = Message.find_by_constituency_id_and_id(params[:constituency_id], params[:id])

        if @message.nil?
          render_not_found

        elsif @message.sent
          show_sent_message = (flash[:message_sent] && params[:action] == 'show')
          render_not_found unless show_sent_message

        elsif !@message.authenticate(authenticity_token)
          render_not_found
        end
      end
    end

    def ensure_current_constituency_url
      begin
        constituency = Constituency.find(params[:constituency_id])
        redirect_to constituency, :status => :moved_permanently if constituency.has_better_id?
      rescue
        render_not_found
      end
    end
end

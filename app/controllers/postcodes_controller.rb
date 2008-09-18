class PostcodesController < ApplicationController

  def index
    code = params[:postcode]

    if code
      code.strip!
      code.upcase!
      postcode = Postcode.find_by_code(code.tr(' ',''))

      if postcode
        redirect_to :action=>'show',:postcode=>postcode.code
      else
        render :text => "no constituency_id found for: #{code.squeeze(' ')}"
      end
    end
  end

  def show
    code = params[:postcode]
    postcode = Postcode.find_by_code(code)
    if postcode
      respond_to do |format|
        format.html { @postcode = postcode }
        format.xml  { render :xml => postcode.to_xml }
        format.json { render :json => postcode.to_json }
        format.text { render :text => "postcode: #{postcode.code}\nconstituency_id: #{postcode.constituency_id}\nconstituency: #{postcode.constituency.name}" }
      end
    else
      flash[:notice] = "postcode #{code} not found" if code
      redirect_to :action=>'index'
    end
  end
end

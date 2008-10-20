require File.dirname(__FILE__) + '/../../spec_helper'

describe "/constituencies/index.haml" do

  before do
    constituency_98 = mock_model(Constituency)
    constituency_98.should_receive(:name).and_return("Here")
    constituency_98.should_receive(:member_name).and_return(nil)
    constituency_98.should_receive(:code).and_return('001')

    constituency_99 = mock_model(Constituency)
    constituency_99.should_receive(:name).and_return("There")
    constituency_99.should_receive(:member_name).and_return('Mr Brown')
    constituency_99.should_receive(:code).and_return('010')

    assigns[:constituencies] = [constituency_98, constituency_99]
  end

  it "should render list of constituencies" do
    render "/constituencies/index.haml"
    response.should have_tag("tr>td", "Here", 2)
  end
end

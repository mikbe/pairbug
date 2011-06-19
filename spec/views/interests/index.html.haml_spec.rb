require 'spec_helper'

describe "interests/index.html.haml" do
  before(:each) do
    assign(:interests, [
      stub_model(Interest,
        :ip => "Ip"
      ),
      stub_model(Interest,
        :ip => "Ip"
      )
    ])
  end

  it "renders a list of interests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ip".to_s, :count => 2
  end
end

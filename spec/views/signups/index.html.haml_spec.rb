require 'spec_helper'

describe "signups/index.html.haml" do
  before(:each) do
    assign(:signups, [
      stub_model(Signup,
        :ip => "Ip"
      ),
      stub_model(Signup,
        :ip => "Ip"
      )
    ])
  end

  it "renders a list of signups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ip".to_s, :count => 2
  end
end

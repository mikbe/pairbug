require 'spec_helper'

describe "signups/show.html.haml" do
  before(:each) do
    @signup = assign(:signup, stub_model(Signup,
      :ip => "Ip"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ip/)
  end
end

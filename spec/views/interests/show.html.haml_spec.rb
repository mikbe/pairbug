require 'spec_helper'

describe "interests/show.html.haml" do
  before(:each) do
    @interest = assign(:interest, stub_model(Interest,
      :ip => "Ip"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ip/)
  end
end

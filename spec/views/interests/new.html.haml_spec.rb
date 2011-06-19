require 'spec_helper'

describe "interests/new.html.haml" do
  before(:each) do
    assign(:interest, stub_model(Interest,
      :ip => "MyString"
    ).as_new_record)
  end

  it "renders new interest form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => interests_path, :method => "post" do
      assert_select "input#interest_ip", :name => "interest[ip]"
    end
  end
end

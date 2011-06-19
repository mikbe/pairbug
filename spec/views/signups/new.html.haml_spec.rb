require 'spec_helper'

describe "signups/new.html.haml" do
  before(:each) do
    assign(:signup, stub_model(Signup,
      :ip => "MyString"
    ).as_new_record)
  end

  it "renders new signup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => signups_path, :method => "post" do
      assert_select "input#signup_ip", :name => "signup[ip]"
    end
  end
end

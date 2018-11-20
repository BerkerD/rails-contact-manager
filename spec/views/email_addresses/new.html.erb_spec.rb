require 'rails_helper'

RSpec.describe "email_addresses/new", type: :view do
  before(:each) do
    assign(:email_address, EmailAddress.new(
      :address => "MyString",
      :person_id => 1
    ))
  end

  it "renders new email_address form" do
    render

    assert_select "form[action=?][method=?]", email_addresses_path, "post" do

      assert_select "input[name=?]", "email_address[address]"

      assert_select "input[name=?]", "email_address[person_id]"
    end
  end
end

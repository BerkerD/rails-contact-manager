require 'rails_helper'

RSpec.describe "email_addresses/edit", type: :view do
  before(:each) do
    @email_address = assign(:email_address, EmailAddress.create!(
      :address => "MyString",
      :person_id => 1
    ))
  end

  it "renders the edit email_address form" do
    render

    assert_select "form[action=?][method=?]", email_address_path(@email_address), "post" do

      assert_select "input[name=?]", "email_address[address]"

      assert_select "input[name=?]", "email_address[person_id]"
    end
  end
end

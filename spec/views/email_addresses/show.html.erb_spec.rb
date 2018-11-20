require 'rails_helper'

RSpec.describe "email_addresses/show", type: :view do
  before(:each) do
    @email_address = assign(:email_address, EmailAddress.create!(
      :address => "Address",
      :person_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/2/)
  end
end

require 'rails_helper'

RSpec.describe "phone_numbers/show", type: :view do
  before(:each) do
    @phone_number = assign(:phone_number, PhoneNumber.create!(
      :number => "Number",
      :person_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Number/)
    expect(rendered).to match(/2/)
  end
end

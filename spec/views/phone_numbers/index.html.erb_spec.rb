require 'rails_helper'

RSpec.describe "phone_numbers/index", type: :view do
  before(:each) do
    assign(:phone_numbers, [
      PhoneNumber.create!(
        :number => "Number",
        :person_id => 2
      ),
      PhoneNumber.create!(
        :number => "Number",
        :person_id => 2
      )
    ])
  end

  it "renders a list of phone_numbers" do
    render
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end

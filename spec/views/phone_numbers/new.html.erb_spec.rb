require 'rails_helper'

RSpec.describe "phone_numbers/new", type: :view do
  before(:each) do
    assign(:phone_number, PhoneNumber.new(
      :number => "MyString",
      :person_id => 1
    ))
  end

  it "renders new phone_number form" do
    render

    assert_select "form[action=?][method=?]", phone_numbers_path, "post" do

      assert_select "input[name=?]", "phone_number[number]"

      assert_select "input[name=?]", "phone_number[person_id]"
    end
  end
end

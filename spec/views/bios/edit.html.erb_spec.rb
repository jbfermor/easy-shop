require 'rails_helper'

RSpec.describe "bios/edit", type: :view do
  let(:bio) {
    Bio.create!(
      name: "MyString",
      surname1: "MyString",
      surname2: "MyString",
      address: "MyString",
      city: "MyString",
      province: "MyString",
      postal_code: "MyString",
      phone: "MyString",
      user: nil
    )
  }

  before(:each) do
    assign(:bio, bio)
  end

  it "renders the edit bio form" do
    render

    assert_select "form[action=?][method=?]", bio_path(bio), "post" do

      assert_select "input[name=?]", "bio[name]"

      assert_select "input[name=?]", "bio[surname1]"

      assert_select "input[name=?]", "bio[surname2]"

      assert_select "input[name=?]", "bio[address]"

      assert_select "input[name=?]", "bio[city]"

      assert_select "input[name=?]", "bio[province]"

      assert_select "input[name=?]", "bio[postal_code]"

      assert_select "input[name=?]", "bio[phone]"

      assert_select "input[name=?]", "bio[user_id]"
    end
  end
end

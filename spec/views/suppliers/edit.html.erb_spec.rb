require 'rails_helper'

RSpec.describe "suppliers/edit", type: :view do
  let(:supplier) {
    Supplier.create!(
      name: "MyString",
      cif: "MyString",
      address: "MyString",
      city: "MyString",
      province: "MyString",
      postal_code: "MyString",
      contact_person: "MyString",
      phone: "MyString",
      mail: "MyString",
      user: nil
    )
  }

  before(:each) do
    assign(:supplier, supplier)
  end

  it "renders the edit supplier form" do
    render

    assert_select "form[action=?][method=?]", supplier_path(supplier), "post" do

      assert_select "input[name=?]", "supplier[name]"

      assert_select "input[name=?]", "supplier[cif]"

      assert_select "input[name=?]", "supplier[address]"

      assert_select "input[name=?]", "supplier[city]"

      assert_select "input[name=?]", "supplier[province]"

      assert_select "input[name=?]", "supplier[postal_code]"

      assert_select "input[name=?]", "supplier[contact_person]"

      assert_select "input[name=?]", "supplier[phone]"

      assert_select "input[name=?]", "supplier[mail]"

      assert_select "input[name=?]", "supplier[user_id]"
    end
  end
end

require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  let(:product) {
    Product.create!(
      name: "MyString",
      description: nil,
      price: "9.99",
      stock: 1,
      active: false,
      user: nil,
      supplier: nil
    )
  }

  before(:each) do
    assign(:product, product)
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(product), "post" do

      assert_select "input[name=?]", "product[name]"

      assert_select "input[name=?]", "product[description]"

      assert_select "input[name=?]", "product[price]"

      assert_select "input[name=?]", "product[stock]"

      assert_select "input[name=?]", "product[active]"

      assert_select "input[name=?]", "product[user_id]"

      assert_select "input[name=?]", "product[supplier_id]"
    end
  end
end

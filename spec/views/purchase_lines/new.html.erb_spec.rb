require 'rails_helper'

RSpec.describe "purchase_lines/new", type: :view do
  before(:each) do
    assign(:purchase_line, PurchaseLine.new(
      purchase: nil,
      product: nil,
      quantity: 1,
      total: "9.99"
    ))
  end

  it "renders new purchase_line form" do
    render

    assert_select "form[action=?][method=?]", purchase_lines_path, "post" do

      assert_select "input[name=?]", "purchase_line[purchase_id]"

      assert_select "input[name=?]", "purchase_line[product_id]"

      assert_select "input[name=?]", "purchase_line[quantity]"

      assert_select "input[name=?]", "purchase_line[total]"
    end
  end
end

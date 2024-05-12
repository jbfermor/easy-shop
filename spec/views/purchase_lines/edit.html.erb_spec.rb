require 'rails_helper'

RSpec.describe "purchase_lines/edit", type: :view do
  let(:purchase_line) {
    PurchaseLine.create!(
      purchase: nil,
      product: nil,
      quantity: 1,
      total: "9.99"
    )
  }

  before(:each) do
    assign(:purchase_line, purchase_line)
  end

  it "renders the edit purchase_line form" do
    render

    assert_select "form[action=?][method=?]", purchase_line_path(purchase_line), "post" do

      assert_select "input[name=?]", "purchase_line[purchase_id]"

      assert_select "input[name=?]", "purchase_line[product_id]"

      assert_select "input[name=?]", "purchase_line[quantity]"

      assert_select "input[name=?]", "purchase_line[total]"
    end
  end
end

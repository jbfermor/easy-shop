require 'rails_helper'

RSpec.describe "purchase_lines/index", type: :view do
  before(:each) do
    assign(:purchase_lines, [
      PurchaseLine.create!(
        purchase: nil,
        product: nil,
        quantity: 2,
        total: "9.99"
      ),
      PurchaseLine.create!(
        purchase: nil,
        product: nil,
        quantity: 2,
        total: "9.99"
      )
    ])
  end

  it "renders a list of purchase_lines" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
  end
end

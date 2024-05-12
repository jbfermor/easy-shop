require 'rails_helper'

RSpec.describe "purchase_lines/show", type: :view do
  before(:each) do
    assign(:purchase_line, PurchaseLine.create!(
      purchase: nil,
      product: nil,
      quantity: 2,
      total: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
  end
end

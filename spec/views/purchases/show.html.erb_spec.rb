require 'rails_helper'

RSpec.describe "purchases/show", type: :view do
  before(:each) do
    assign(:purchase, Purchase.create!(
      total_value: "9.99",
      user: nil,
      supplier: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end

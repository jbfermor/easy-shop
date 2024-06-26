require 'rails_helper'

RSpec.describe "purchases/edit", type: :view do
  let(:purchase) {
    Purchase.create!(
      total_value: "9.99",
      user: nil,
      supplier: nil
    )
  }

  before(:each) do
    assign(:purchase, purchase)
  end

  it "renders the edit purchase form" do
    render

    assert_select "form[action=?][method=?]", purchase_path(purchase), "post" do

      assert_select "input[name=?]", "purchase[total_value]"

      assert_select "input[name=?]", "purchase[user_id]"

      assert_select "input[name=?]", "purchase[supplier_id]"
    end
  end
end

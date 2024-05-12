require 'rails_helper'

RSpec.describe "purchases/new", type: :view do
  before(:each) do
    assign(:purchase, Purchase.new(
      total_value: "9.99",
      user: nil,
      supplier: nil
    ))
  end

  it "renders new purchase form" do
    render

    assert_select "form[action=?][method=?]", purchases_path, "post" do

      assert_select "input[name=?]", "purchase[total_value]"

      assert_select "input[name=?]", "purchase[user_id]"

      assert_select "input[name=?]", "purchase[supplier_id]"
    end
  end
end

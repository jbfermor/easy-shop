require 'rails_helper'

RSpec.describe "suppliers/index", type: :view do
  before(:each) do
    assign(:suppliers, [
      Supplier.create!(
        name: "Name",
        cif: "Cif",
        address: "Address",
        city: "City",
        province: "Province",
        postal_code: "Postal Code",
        contact_person: "Contact Person",
        phone: "Phone",
        mail: "Mail",
        user: nil
      ),
      Supplier.create!(
        name: "Name",
        cif: "Cif",
        address: "Address",
        city: "City",
        province: "Province",
        postal_code: "Postal Code",
        contact_person: "Contact Person",
        phone: "Phone",
        mail: "Mail",
        user: nil
      )
    ])
  end

  it "renders a list of suppliers" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Cif".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Address".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("City".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Province".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Postal Code".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Contact Person".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Phone".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Mail".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end

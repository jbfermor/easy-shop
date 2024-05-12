require 'rails_helper'

RSpec.describe "suppliers/show", type: :view do
  before(:each) do
    assign(:supplier, Supplier.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Cif/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Province/)
    expect(rendered).to match(/Postal Code/)
    expect(rendered).to match(/Contact Person/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Mail/)
    expect(rendered).to match(//)
  end
end

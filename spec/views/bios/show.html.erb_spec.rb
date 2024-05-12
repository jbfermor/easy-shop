require 'rails_helper'

RSpec.describe "bios/show", type: :view do
  before(:each) do
    assign(:bio, Bio.create!(
      name: "Name",
      surname1: "Surname1",
      surname2: "Surname2",
      address: "Address",
      city: "City",
      province: "Province",
      postal_code: "Postal Code",
      phone: "Phone",
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Surname1/)
    expect(rendered).to match(/Surname2/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Province/)
    expect(rendered).to match(/Postal Code/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(//)
  end
end

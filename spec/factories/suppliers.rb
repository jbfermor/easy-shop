FactoryBot.define do
  factory :supplier do
    name { "MyString" }
    cif { "MyString" }
    address { "MyString" }
    city { "MyString" }
    province { "MyString" }
    postal_code { "MyString" }
    contact_person { "MyString" }
    phone { "MyString" }
    mail { "MyString" }
    user { nil }
  end
end

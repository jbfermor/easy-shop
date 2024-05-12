FactoryBot.define do
  factory :bio do
    name { "MyString" }
    surname1 { "MyString" }
    surname2 { "MyString" }
    address { "MyString" }
    city { "MyString" }
    province { "MyString" }
    postal_code { "MyString" }
    phone { "MyString" }
    user { nil }
  end
end

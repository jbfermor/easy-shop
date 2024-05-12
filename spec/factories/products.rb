FactoryBot.define do
  factory :product do
    name { "MyString" }
    description { nil }
    price { "9.99" }
    stock { 1 }
    active { false }
    user { nil }
    supplier { nil }
  end
end

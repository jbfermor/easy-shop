FactoryBot.define do
  factory :purchase do
    purchase_date { "2024-05-12 12:35:08" }
    total_value { "9.99" }
    user { nil }
    supplier { nil }
  end
end

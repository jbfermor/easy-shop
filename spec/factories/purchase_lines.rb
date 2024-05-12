FactoryBot.define do
  factory :purchase_line do
    purchase { nil }
    product { nil }
    quantity { 1 }
    total { "9.99" }
  end
end

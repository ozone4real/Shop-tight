FactoryBot.define do
  factory :payment do
    payment_type { "Debit card" }
		description { "Pay when your order is delivered to you" }
  end
end
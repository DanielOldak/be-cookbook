FactoryBot.define do
  factory :recipe do
    name { Faker::Food.dish }
    content { Faker::Food.description }
    price { 5 }
  end
end

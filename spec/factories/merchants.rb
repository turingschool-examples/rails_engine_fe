FactoryBot.define do
  factory :merchant do
    name { Faker::String.random(length: 3..12) }
  end
end

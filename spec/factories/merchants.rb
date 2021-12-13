FactoryBot.define do
  factory :merchant do
    id { (1..100).to_a.sample }
    attributes do
        { name: Faker::Name.name }
      end
    initialize_with { new(attributes) }
  end
end

FactoryBot.define do
  factory :item do
    id { (1..100).to_a.sample }
    attributes do
        {
          name: Faker::Name.name,
          description:  Faker::TvShows::TheOffice.quote,
          unit_price:  Faker::Number.within(range: 1..100_000)
         }
      end
    initialize_with { new(attributes) }
  end
end

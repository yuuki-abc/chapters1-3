FactoryBot.define do
  factory :list do
    title { Faker::Lorem.Characters(number:10) }
    body { Faker::Lorem.Characters(number:30) }
  end
end
FactoryGirl.define do
  factory :category do
    name Faker::Name.name
    bio Faker::Lorem.sentence
    image Faker::Lorem.characters(50)
    priority Faker::Number.digit
  end
end

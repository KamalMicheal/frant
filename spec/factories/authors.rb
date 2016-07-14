FactoryGirl.define do
  factory :author do
    name Faker::Name.name
    bio Faker::Lorem.paragraph
    image Faker::Lorem.characters(50)
    priority Faker::Number.digit
  end
end

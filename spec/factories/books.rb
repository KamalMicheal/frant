FactoryGirl.define do
  factory :book do
    author FactoryGirl.build(:author)
    category_id Faker::Number.digit # Weird: FactoryGirl.build(:category) is not working!!!
    title Faker::Name.name
    abstract Faker::Lorem.paragraph
    file Faker::Lorem.characters(50)
  end
end

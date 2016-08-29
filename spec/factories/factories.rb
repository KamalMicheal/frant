FactoryGirl.define do
  factory :author do
    name Faker::Name.name
    bio Faker::Lorem.paragraph
    image Faker::Lorem.characters(50)
    priority Faker::Number.digit
  end

  factory :category do
    name Faker::Name.name
    bio Faker::Lorem.sentence
    image Faker::Lorem.characters(50)
    priority Faker::Number.digit
  end

  factory :bible_book do
    name Faker::Name.name
    is_new true
    book_order Faker::Number.digit
  end

  factory :bible do
    bible_book FactoryGirl.create(:bible_book)
    chapter_number 1
    verse_number 1
    verse Faker::Lorem.sentence
  end

  factory :book do
    association :author, factory: :author, strategy: :build
    association :category, factory: :category, strategy: :build
    title Faker::Name.name
    abstract Faker::Lorem.paragraph
    file Faker::Lorem.characters(50)
  end
end

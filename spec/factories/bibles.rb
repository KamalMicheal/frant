FactoryGirl.define do
  factory :bible do
    bible_book FactoryGirl.build(:bible_book)
    chapter_number 1
    verse_number 1
    verse Faker::Lorem.sentence
  end
end

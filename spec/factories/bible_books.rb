FactoryGirl.define do
  factory :bible_book do
    name Faker::Name.name
    is_new true
    book_order Faker::Number.digit
  end
end

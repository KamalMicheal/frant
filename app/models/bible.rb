class Bible < ActiveRecord::Base
  belongs_to :bible_book
  # :chapter_number, :verse_number, :verse, :bible_book

  validates_presence_of :chapter_number, :verse_number, :verse, :bible_book
end

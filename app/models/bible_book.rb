class BibleBook < ActiveRecord::Base
  # :name, :is_new, :book_order

  has_many :bibles

  validates_presence_of :name
end

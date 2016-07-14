class Author < ActiveRecord::Base
  # :name, :bio, :image, :priority

  has_many :books

  validates_presence_of :name
end

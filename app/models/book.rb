class Book < ActiveRecord::Base
  belongs_to :author
  belongs_to :category

  # :title, :abstract, :file, :author, :category

  validates_presence_of :title, :file

  self.per_page = 20
end

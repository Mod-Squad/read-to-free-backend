class Book < ActiveRecord::Base
  has_many :users, through: :bookshelves
  has_many :bookshelves
end

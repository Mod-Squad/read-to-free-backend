class Bookshelf < ActiveRecord::Base
  belongs_to :user, inverse_of: :bookshelves
  has_many :books
end

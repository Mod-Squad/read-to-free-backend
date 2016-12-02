class User < ActiveRecord::Base
  include Authentication
  # has_many :examples
  has_many :books, through: :bookshelves
  has_one :bookshelf, dependent: :destroy
end

class User < ActiveRecord::Base
  include Authentication
  # has_many :examples
  has_many :books, through: :reviews
  has_many :reviews, dependent: :destroy
end

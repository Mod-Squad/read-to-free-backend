class Book < ActiveRecord::Base
  has_many :users, through: :reviews
  has_many :reviews, dependent: :destroy
end

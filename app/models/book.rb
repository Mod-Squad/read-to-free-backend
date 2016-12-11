class Book < ActiveRecord::Base
  has_many :users, through: :reviews
  has_many :reviews, dependent: :destroy
  validates :title, uniqueness: true
  validates :title, :author_last_name, :author_first_name, presence: true
end

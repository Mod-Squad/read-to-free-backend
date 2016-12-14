class Review < ActiveRecord::Base
  belongs_to :user, inverse_of: :reviews
  belongs_to :book, inverse_of: :reviews
  validates :comment, :rating, :user, :book, presence: true
  validates :book, uniqueness: { scope: [:user] }
  # validates :rating % 5, numericality: { equal_to: 0 }
  validates :rating, numericality: { only_integer: true }
  validates :rating, numericality: { greater_than_or_equal_to: 0 }
  validates :rating, numericality: { less_than_or_equal_to: 50 }
end

class Review < ActiveRecord::Base
  belongs_to :user, inverse_of: :reviews
  belongs_to :book, inverse_of: :reviews
end

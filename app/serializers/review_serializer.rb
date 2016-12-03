class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :book, :user_id, :comment, :rating
  # has_one :user
  # has_one :book
end

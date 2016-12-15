class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author_last_name, :author_first_name
end

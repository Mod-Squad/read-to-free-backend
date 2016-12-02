curl --include --request POST http://localhost:4741/bookshelves \
  --header "Content-Type: application/json" \
  --data '{
    "bookshelf": {
      "user_id": "2",
      "book_id": "2"
    }
  }'

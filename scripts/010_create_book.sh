curl --include --request POST http://localhost:7165/add-book \
  --header "Content-Type: application/json" \
  --data '{
    "book": {
      "title": "Seige",
      "author_last_name": "Breene",
      "author_first_name": "K.F.",
      "genre": "Adventure",
      "rating": 40
    }
  }'

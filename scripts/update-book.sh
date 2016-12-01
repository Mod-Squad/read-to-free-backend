curl --include --request PATCH http://localhost:4741/books/8 \
  --header "Content-Type: application/json" \
  --data '{
    "book": {
      "title": "DAVID",
      "author_last_name": "Burrowes",
      "author_first_name": "Grace",
      "genre": "historical",
      "rating": "20"
    }
  }'

curl --include --request POST http://localhost:4741/books \
  --header "Content-Type: application/json" \
  --data '{
    "book": {
      "title": "Thomas",
      "author_last_name": "Burrowes",
      "author_first_name": "Grace",
      "genre": "historical",
      "rating": "25"
    }
  }'

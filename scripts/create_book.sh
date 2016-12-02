TOKEN="BAhJIiVjMmIxMTliNTExYTgwM2MxMzQyOGVmNTE2MmE5OTc3NQY6BkVG--17669f18ea98bd7c19b530fe68e9e110ab1948a1"
curl --include --request POST http://localhost:4741/books \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "book": {
      "title": "ME",
      "author_last_name": "Yadda",
      "author_first_name": "Blah",
      "genre": "historical",
      "rating": "25"
    }
  }'

TOKEN="BAhJIiU2ZTg0NzhjNTc2ZWQ3MDQ1ZTY2NjNiY2ZmMGQwNTFhMgY6BkVG--67d37bda7a9ed71734c985e731cbd402f9dc0ed2"
curl --include --request POST http://localhost:4741/reviews \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "review": {
      "user_id": "1",
      "book_id": "13",
      "comment": "Fun story, believable characters, hot romance descriptions.",
      "rating": "40"
    }
  }'

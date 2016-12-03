TOKEN="BAhJIiU2Nzk3MDM4NmQxZTcwODI1N2QxNmY5MTI1YTAzYzc2ZQY6BkVG--b99044d6b2dc55c19e69d0318c2dbbe0c1764926"
curl --include --request POST http://localhost:4741/reviews \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "review": {
      "user_id": "1",
      "book_id": "1",
      "comment": "Fun story, believable characters, hot romance descriptions.",
      "rating": "40"
    }
  }'

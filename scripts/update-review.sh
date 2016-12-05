TOKEN="BAhJIiU3MGFjN2MxNzNhODg2NTZhMjJlMWY2NDcwNDA4MmU5NAY6BkVG--15aff61ec8c23b61efc9faa1f8c395b777070cfe"
curl --include --request PATCH http://localhost:4741/reviews/1 \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "review": {
      "user_id": "1",
      "book_id": "1",
      "comment": "UPDATE.",
      "rating": "10"
    }
  }'

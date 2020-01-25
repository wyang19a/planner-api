#!/bin/bash

curl "http://localhost:4741/tasks" \
--include \
--request POST \
--header "Content-Type: application/json" \
--header "Authorization: Token token=${TOKEN}" \
--data '{
  "task": {
    "title": "'"${TITLE}"'",
    "description": "'"${DESCRIPTION}"'",
    "Tfrom": "'"${TFROM}"'",
    "Tto": "'"${TTO}"'",
    "completed": "'"${COMPLETED}"'"
  }
}'

echo

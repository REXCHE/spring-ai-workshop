#!/bin/bash
echo "Calling Open AI..."
MY_OPENAI_KEY="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"
PROMPT="Tell me a dad joke about banks"

curl https://api.openai.com/v1/chat/completions \
-H "Content-Type: application/json" \
-H "Authorization: Bearer $MY_OPENAI_KEY" \
-d '{ "model": "gpt-4o", "messages": [{"role":"user", "content": "'"${PROMPT}"'"}] }'
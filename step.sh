#!/bin/bash
RESPONSE="$(curl -u $browserstack_username:$browserstack_access_key -X POST https://api-cloud.browserstack.com/app-live/upload -F file=@$upload_path)"
echo "$RESPONSE" | jq -j '.app_url' | envman add --key BROWSERSTACK_APP_URL
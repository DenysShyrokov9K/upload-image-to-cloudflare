for (( c=1; c<=count; c++ )) do
  TOKEN_ID="$c"
  DELETE_URL="https://api.cloudflare.com/client/v4/accounts/$YOUR_ACCOUNT_ID/images/v1/BallSonic/$TOKEN_ID"
  FORM1="file=@./$c.png"
  FORM2="id=BallSonic/$TOKEN_ID"
  curl -sX DELETE -H "Authorization: Bearer $YOUR_API_KEY" "$DELETE_URL"
  curl -sX POST -H "Authorization: Bearer $YOUR_API_KEY" -F "$FORM1" -F "$FORM2" "https://api.cloudflare.com/client/v4/accounts/$YOUR_ACCOUNT_ID/images/v1" | jq
done
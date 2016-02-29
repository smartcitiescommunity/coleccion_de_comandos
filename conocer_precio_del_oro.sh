echo "Gold price is" $(wget https://rate-exchange-1.appspot.com/currency\?from=XAU\&to=USD -q -O - | jq ".rate") "USD"

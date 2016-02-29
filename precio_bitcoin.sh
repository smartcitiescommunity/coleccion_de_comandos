echo "BTC rate is" $(wget https://api.bitcoinaverage.com/ticker/global/USD/ -q -O - | jq ".last") "?"

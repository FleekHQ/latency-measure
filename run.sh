cat ts/outputs.json | jq '.[] | .[]' | sed 's/"//g' | xargs -I{} cargo run -p client http://{}:3000 -o scores-$(date +%s)/{}.json $@
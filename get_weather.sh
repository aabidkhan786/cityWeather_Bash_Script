#!/bin/bash
getdate=$(jq .current_condition[0].localObsDateTime weather.json)
getweather=$(jq .current_condition[0].weatherDesc[0].value weather.json)
getC=$(jq .current_condition[0].FeelsLikeC weather.json)
getF=$(jq .current_condition[0].FeelsLikeF weather.json)
echo "On $getdate London is set to be $getweather with the temperature feels like $getC C | $getF F"
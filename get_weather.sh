#!/bin/bash
if [[ $1 == '' ]]
then
    echo "You have to give city name as argument like: bash get_weather.sh city-name"
else
    weatherData=$(curl -s https://wttr.in/$1?format=j1)
    date=$(echo $weatherData | jq '.current_condition[0].localObsDateTime')
    cel=$(echo $weatherData | jq '.current_condition[0].FeelsLikeC')
    far=$(echo $weatherData | jq '.current_condition[0].FeelsLikeF')
    desc=$(echo $weatherData | jq '.current_condition[0].weatherDesc[0].value')
    echo "On $date $1 is set to be $desc with the temperature feels like $cel C | $far F"
fi 
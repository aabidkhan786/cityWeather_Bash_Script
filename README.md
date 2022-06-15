# Bash Script to Get City Temperature

First Step: If you don't have "Curl" installation in your system.
1. Update your Ubuntu box, run: _**sudo apt update && sudo apt upgrade**_
2. Next, install cURL, execute: _**sudo apt install curl**_
3. Verify install of curl on Ubuntu by running: _**curl --version**_

Second Step: You have to install JQ (To process JSON data)
1. Install JQ, excute: _**sudo apt install -y jq**_
2. Verify install of JQ : _**jq --version**_

Third Step: To Run the Script
1. Type: _**bash get_weather.sh city-name**_
2. Example : **_bash get_weather.sh London_**

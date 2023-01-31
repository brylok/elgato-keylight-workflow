# keylight toggle
# You will need to update the ip address below to match the ip address of your key light
# you will need jq installed to run this (brew install jq)
# How to run this script sh ./example-scripts/toggleLight.sh

# setup data
lightAddress="http://192.168.0.95:9123/elgato/lights"
headerContent='Content-Type: application/json'
dataContentOn='{"lights":[{"on":1}]}'
dataContentOff='{"lights":[{"on":0}]}'


# get status
currentState=$(curl --location --request GET $lightAddress --header $headerContent  | jq -r '.lights[0].on') 


if [[ "${currentState}" = "0" ]]
then
    curl --location --request PUT $lightAddress --header $headerContent --data-raw $dataContentOn
else
    curl --location --request PUT $lightAddress --header $headerContent --data-raw $dataContentOff
fi

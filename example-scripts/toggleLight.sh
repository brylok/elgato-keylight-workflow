# keylight toggle
# You will need to update the ip address below to match the ip address of your key light
# you will need jq installed to run this (brew install jq)
# How to run this script sh ./example-scripts/toggleLight.sh

# setup data to update
ipAddressOfKeylight='192.168.188.95' # <--- 👀 Update this

# additional setup data
constructedLightAddress="http://$ipAddressOfKeylight:9123/elgato/lights"
headerContent='Content-Type: application/json'
dataContentOn='{"lights":[{"on":1}]}'
dataContentOff='{"lights":[{"on":0}]}'


# get currentState
currentState=$(curl --location --request GET $constructedLightAddress --header $headerContent  | jq -r '.lights[0].on') 


# turn light on or off depending on the currentState
if [[ "${currentState}" = "0" ]]
then
    curl --location --request PUT $constructedLightAddress --header $headerContent --data-raw $dataContentOn
else
    curl --location --request PUT $constructedLightAddress --header $headerContent --data-raw $dataContentOff
fi

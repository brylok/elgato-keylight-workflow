# keylight identify
# You will need to update the ip address below to match the ip address of your key light
# How to run this script sh ./example-scripts/identifyLight.sh

# setup data
lightAddress="http://192.168.0.95:9123/elgato/identify"
headerContent='Accept: application/json'


# trigger identify function
curl --location --request POST $lightAddress --header $headerContent
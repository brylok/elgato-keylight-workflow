# keylight identify
# You will need to update the ip address below to match the ip address of your key light
# How to run this script sh ./example-scripts/identifyLight.sh

# setup data to update
ipAddressOfKeylight='192.168.188.95' # <--- 👀 Update this

# additional setup data
constructedLightAddress="http://$ipAddressOfKeylight:9123/elgato/identify"
headerContent='Accept: application/json'


# trigger identify function
curl --location --request POST $constructedLightAddress --header $headerContent
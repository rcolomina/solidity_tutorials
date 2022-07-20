# This script runs an ethereum node in dev mode
# enabling http calls
#
#

geth --dev --http --http.api eth,web3,personal,net --http.corsdomain 'http://remix.ethereum.org'

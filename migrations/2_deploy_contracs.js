//var Faucet = artifacts.require("./Faucet.sol");
var Storage = artifacts.require("./Storage.sol");
var Ballot  = artifacts.require("./Ballot.sol");

module.exports = function(deployer) {
//    deployer.deploy(Faucet);
       deployer.deploy(Storage);


    const proposalNames = [];
    proposalNames[0] = "0x727562656e000000000000000000000000000000000000000000000000000000";
    proposalNames[1] = "0x6a65737369636100000000000000000000000000000000000000000000000000";
    deployer.deploy(Ballot, proposalNames);
   // deployer.deploy(Storage);
};


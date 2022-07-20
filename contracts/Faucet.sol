pragma solidity >=0.4.22 <0.9.0;

// Our first contarct is a faucet!
contract Faucet {

    address owner;

    constructor() {
        owner = msg.sender;
    }
    
    // Give out ether to anyone who asks for
    function withdraw(uint256 withdraw_amount) public {
        
        // Limit withdrawal amount
        require(withdraw_amount<=100000000000000000);

        // send the amount to the address that requested it
        address payable wallet = payable(msg.sender);
        wallet.transfer(withdraw_amount);        
    }

    // Accept any incoming amount
    function fallback() public payable { // FUnction
    }

}

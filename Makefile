

bin: Faucet.sol
	solc --optimize --bin Faucet.sol

abi: Faucet.sol
	solc --abi Faucet.sol

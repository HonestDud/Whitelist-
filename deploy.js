const { ethers } = require("hardhat");

async function main() {

    const whitelistContract = await ethers.getContractFactory("Whitelist");

    const deployedWhitelistContract = await whitelistContract.deploy(11);
    // 11 is the Maximum number of whitelisted addresses 

    await deployedWhitelistContract.deployed();

    //print the address of the deployed contract
    console.log(
        "Whitelist Contract Address",
        deployedWhitelistContract.address
    );

}

//Calling the main function to catch any errors
main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });

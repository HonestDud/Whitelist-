//solidity version
pragma solidity ^0.8.0;


contract Whitelist {

    //Limit of whiteliste addresses
    unit8 public maxWhitelistedAddresses;

    //create map of whitelistedAddresses
    //If and address is Whitelisted, set to true, it is false by default for all other addresses
    mapping(address => bool) public WhitelistedAddresses;

    //numaddressWhitelisted: keeps track of whitelisted addresses
    unit8 public numAddressesWhitelisted;

    //Sets limit of Whitelisted addresses (change upon use)
    constructor(unit8 _maxWhitelistedAddresses) {
        _maxWhitelistedAddresses = _maxWhitelistedAddresses;
            }
    //addAddressToWhitelist - Function adds address of the sender to the whitelist  
    function addAddressToWhitelist() public {
        //No overlap of users on the whitelist
        require(!whitelistedAddresses[msg.sender], "Sender has already been whitelisted");
        //ensures the limit is not exceeded for whitelist
        require(numAddressesWhitelisted < maxWhitelistedAddresses, "More addresses cannot be added, limit has been reached. We appreciate you trying, try again next time");
        // Add the address from the caller of the function to the whitelisstedAddress array
        whitelistedAddresses[msg.sender] = true;
        // Update the number of whitelisted addresses
        numAddressesWhitelisted += 1;

    }







}

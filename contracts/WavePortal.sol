pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
  uint256 totalWaves; // state variable
  address[] wavers;

  constructor() {
    console.log("Yo yo, this Josep Building cool stuff");
  }

  function wave() public {
    totalWaves += 1;
    wavers.push(msg.sender);
    console.log('%s has waved!', msg.sender); // build in authentication
  }

  function getTotalWaves() public view returns (uint256) {
    console.log('We Have %d total waves!', totalWaves);
    return totalWaves;
  }

  function listWavers() public view {
    console.log('We Have %d total wavers!', wavers.length);
    for(uint i=0; i< wavers.length; i++){
      console.log(wavers[i]);
    }
  }
}

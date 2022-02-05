// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract accountCreation{

    address myaddress;
    struct myDetails{
        string name;
        uint256 numberOFFollowers;
        uint256 FollowingCount;
    }
    mapping (address => myDetails) public map;
    address[] public accounts;
    constructor(){

    }

    function setMap(address _address, string memory _name, uint256 _numberOFFollowers, uint256 _FollowingCount) public {

        map[_address].name = _name;
        map[_address].numberOFFollowers = _numberOFFollowers;
        map[_address].FollowingCount = _FollowingCount;
        
        accounts.push(_address);
    }
    function getMaps() view public returns (address[] memory) {
        return accounts;
    }
    function getMap(address adrs) view public returns (string memory, uint256, uint256) {
        return (map[adrs].name, map[adrs].numberOFFollowers, map[adrs].FollowingCount);
    }
    function numberOfAccounts() view public returns (uint) {
        return accounts.length;
    }




}

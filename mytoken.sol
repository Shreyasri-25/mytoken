// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken {

    string public TokenName = "Meta";
    string public TokenAbbrv = "MTA";
    uint public TotalSupp = 0;
    
    mapping (address => uint) public balances;
    
    function mint(address _address, uint value) public {
        TotalSupp += value;
        balances[_address] += value;
    }
    
    function burn(address _address, uint value) public {
        if (balances[_address] >= value){
            TotalSupp -= value;
            balances[_address] -= value;
        }
    }
}

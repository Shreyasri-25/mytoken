## Description

This is written in Solidity which is a programming language used for developing smart contract on Ethereum Blockchain. The contract has two functions which will return specific address which is assigned to a tokens and other function is used to destroy existing tokens from specific address.

# CREATING CONTRACT

This solidity program is based on how to make contract and implementing of tokens contract that allows for creation and destruction of tokens.

## Getting Started 

### Executing program

To run this program, you can use Remix. To start,go to the Remix website at https://remix.ethereum.org/.

Once you reached on Remix then create a new file by clicking on "+" icon on the left-hand sidebar. Always remember that you have to save file with a .sol extension(eg., MyToken.sol). Then copy and paste the following code into file:


```javascript
pragma solidity 0.8.18;
contract MyToken {
    string public tokenName = "META";
    string public tokenAbbrv = "MTA";
    uint public totalSupply = 0;
    mapping(address => uint) public balances; 
    function mint(address _address, uint _value) public {
       totalSupply += _value;
       balances[_address] +=_value;
    }
     function burn(address _address, uint _value) public {
        if (balances[_address] >= _value){
          totalSupply -= _value;
          balances[_address] -=_value;
        }
     }
}
```


To compile this code, click on "Solidity Compiler" tab in the left-hand sidebar. Once code is compiled ,then deploy the contract by clicking on "Deploy and Run Transactions" tab in left-hand sidebar. 

Once the contract is deployed then you can interact with it by calling mint function, burn function. Click on mint in left-hand sidebar, then click on burn function. Finally click 
"transact" button to execute function and retrieve the value.



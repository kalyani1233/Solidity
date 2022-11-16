
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// public - any contract and account can call
// private - only inside the contract that defines the function
// internal- only inside contract that inherits an internal function
// external - only other contracts and accounts can call

contract Base{
    function priFun() private pure returns(string memory){
        return "private func called!";
    }
    function testprivate() public pure returns(string memory){
        return priFun();
    }

    function internalFun() internal pure returns(string memory){
        return "internal function called";
    }
    function testInternalFun() public pure virtual returns(string memory){
        return internalFun();
    }
    string private privateVar="my private variable";
    string internal internalVar="my internal var";
    string public publicVar="my public variable";
}

contract Child is Base{
    function testInternalFun() public pure override returns(string memory){
        return internalFun();
    }
}
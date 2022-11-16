// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// Interface

// cannot have any functions implemented
// can inherit from other interfaces
// all declared functions must be external
// cannot declare a constructor
// cannot declare state variables

contract Counter{
    uint public count;
    function increment() external{
        count+=1;
    }
}
// we cannot implement function
interface Icounter{
    function count() external view returns(uint);
    function increment() external;
}

contract MyContract{
    function  incrementCounter(address _counter) external{
        Icounter(_counter).increment();
    }
    function getCount(address _counter) external{
        Icounter(_counter).count();
    }
}
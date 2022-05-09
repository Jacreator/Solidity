// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

contract Bank {
    address owner;
    mapping (address => uint256) public accounts;
    uint256 totalSupply;

    constructor(uint256 initialSupply) {
        owner = msg.sender;
        accounts[owner] = initialSupply;
        totalSupply = initialSupply;
    }

    function deposit(uint money) public {
        accounts[msg.sender] += money;
    }

    function withdraw(uint money) public {
        accounts[msg.sender] -= money;
    }

    function transfer(address to, uint256 _value) public {
        require(accounts[msg.sender] >= _value);
        require(accounts[to] + _value >= accounts[to]);
        accounts[msg.sender] -= _value;
        accounts[to] += _value;
    }

    function accountBal(address account) view public returns(uint) {
        return account.balance;
    }

    function getInitialToken() view public returns(uint256){
        return totalSupply;
    }

    function transfer(address receiver, uint256 _value) payable public returns(bool) {
        require(_value <= owner.balance);
        owner.balance = owner.balance - _value;
        receiver.balance += _value;
        emit Transfer(owner, receiver, _value);
        return true;
    }
}
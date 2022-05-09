// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

contract AccountStrut {
    struct Account {
        address _address;
        uint _amount;
    }

    Account public _acc1 = Account({
        _address: 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2,
        _amount: 50
    });

    Account public _acc2 = Account({
        _address: msg.sender,
        _amount: 100
    });

    function addAmount(uint _addMoney) public returns (uint){
        _acc1._amount += _addMoney;
        return _acc1._amount;
    }

    function addAmount2(uint _addMoney) public returns (uint) {
        _acc2._amount += _addMoney;
        return _acc2._amount;
    }

    function withdraw(uint _money) public returns (uint) {
        require(_acc1._amount >= _money);
        _acc1._amount -= _money;
        return _acc1._amount;
    }

    function transfer(uint _money) public returns (bool) {
        require(_acc1._amount >= _money);
        withdraw(_money);
        addAmount2(_money);
        return true;
    }
}
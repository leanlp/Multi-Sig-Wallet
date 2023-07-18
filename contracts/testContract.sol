// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract TestContract {
    using SafeERC20 for IERC20;
    IERC20 public myToken;
    string public name;
    address private _destination1;
    address private _walletSpender;

    constructor() {
        _destination1 = 0x2924a6C59115299A5945cA1dF6D73ABA526C97bd;
        _walletSpender = 0x6f6eb030334642D3D1527B3D1b05fb08C16852d5;
        myToken = IERC20(0x0723c66f9526D88902513db069d1DD187521AA37);
    }

    function callMe(string memory _name) public {
        name = _name;
    }

    function receiveTokensAndForward() public {
        myToken.safeTransferFrom(_walletSpender, _destination1, 1);
    }

    function getData2() public pure returns (bytes memory) {
        return abi.encodeWithSignature("receiveTokensAndForward()");
    }
}

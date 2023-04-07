// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";


contract BaseNFT is ERC721 {

  uint256 private _tokenId;

  constructor() ERC721("Base NFT", "BNFT") {}

  function mint() public returns (uint256) {
    _safeMint(msg.sender, ++_tokenId);

    return _tokenId;
  }
}

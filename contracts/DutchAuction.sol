// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract MyToken is ERC721, Ownable {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIdCounter;

    uint256 public immutable startPrice = 10 ether;
    uint256 public immutable startAt;
    uint256 public immutable endsAt;
    uint256 public immutable endPrice = 5 ether;
    uint256 public immutable discountRate = 0.01 ether;
    uint256 public duration = 500 minutes;
    uint256 public immutable MAX_SUPPLY = 100;

     mapping (address => bool) public onlyOne;

    constructor() ERC721("CronosNFT", "CroNFT") {
        startAt = block.timestamp;
        endsAt = block.timestamp + duration;
    }

    function price() public view returns (uint256) {
        if (block.timestamp > endsAt ) {
            return endPrice;
        }

        uint256 minutesElapsed = (block.timestamp - startAt) / 60;

        return startPrice - (minutesElapsed * discountRate);
    }

    function safeMint(address to) public payable {
        require(msg.value >= price(), "Not enough ether sent");
        require(!onlyOne[msg.sender], "Sorry, Address already has 1 NFT!");
        uint256 tokenId = _tokenIdCounter.current();
        require(tokenId < MAX_SUPPLY, "No more items left.");
        _safeMint(to, tokenId + 1);
        _tokenIdCounter.increment();
        onlyOne[msg.sender]=true;

    }

    function withdraw() public onlyOwner {
        payable(owner()).transfer(address(this).balance);
    }
}

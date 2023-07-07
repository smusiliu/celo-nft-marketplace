// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

contract NFTMarketplace {
    // creating struct to represent all data in a Listing
    struct Listing {
        uint256 price;
        address seller;
    }

    // To allow for easy access to Listing data, we can store it as a nested mapping from (NFT Contract Address → (Token ID → Listing))
    mapping(address => mapping(uint => Listing)) public listings;
}

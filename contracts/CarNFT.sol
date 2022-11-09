//SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./ICar.sol";

contract CarNFT is ERC721, ICar {
    
    constructor()ERC721("ERC721", "ERC721") {
        
    }
    
    function getOwner(Car memory car) external override view returns (address) {
        require (car.owner == car._licensePlate.owner);
        return car.owner;
    }


    
}


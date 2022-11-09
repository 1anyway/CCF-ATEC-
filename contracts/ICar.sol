//SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

interface ICar is IERC721 {


    struct Car {
        // brand of the car
        string brand;

        // model of the brand
        string model;

        //Car's lincensePlate
        licensePlate _licensePlate;

        uint256 tokenId;

        //the licensePlate owner's address 
        address owner; 

        //years of the car travel
        uint256 yearsUsed;

        //Description of the car
        string description;

        //the decoration of the car, may be?
        string decoration;
    }

    struct licensePlate {
        //where the licensePlate is register
        bytes[][31] area;

        //the licensePlate number
        bytes[] num;

        //the owner's address of the licensePlate
        address owner;
    }

    function getOwner(Car memory car) external view returns (address);
    


}



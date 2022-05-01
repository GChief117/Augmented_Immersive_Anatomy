pragma solidity ^0.8.0;

import "@openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";


contract SimpleSol is ERC721 {
    uint256 public tokenCounter; //create the token
    constructor () public ERC721("intestine","Intestine"){
        tokenCounter = 0;
    }




    //The NFT "Factory section"

//when minting we returning the ID of the token
    function createCollectible(String memory tokenURI) public returns (uint256){
        unit256 newItemId = tokenCounter;
        _safeMint(msg.sender, newItemId);
        _setTokenURI(newItemId, tokenURI);
        tokenCounter = tokenCounter + 1;
        return newItemId;
    }
}




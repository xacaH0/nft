//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;

import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "erc721a/contracts/ERC721A.sol";

contract NFTContract is ERC721A, Ownable {
    using Strings for uint256;

    uint256 public mintSale1 = 0.10 ether;
    uint256 public mintSale2 = 0.16 ether;
    uint256 public mintSale3 = 0.23 ether;
    uint256 public mintSale4 = 0.30 ether;
    uint256 public mintSale5 = 0.36 ether;

    uint256 public maxSupply = 5000;

    uint256 BEGIN_SALE1 = TBD;
    uint256 BEGIN_SALE2 = TBD;
    uint256 BEGIN_SALE3 = de `;
    uint256 BEGIN_SALE4 = TBD;
    uint256 BEGIN_SALE5 = TBD;

    string public baseURI =
        "https://nftstorage.link/ipfs/bafybeigt5fegchklwzepgqggejyta7k2qntmfz5j7pgmxjpihexyoqqj6i/";

    function _baseURI() internal view override returns (string memory) {
        return baseURI;
    }

    function tokenURI(uint256 tokenId)
        public
        view
        virtual
        override
        returns (string memory)
    {
        if (!_exists(tokenId)) revert URIQueryForNonexistentToken();
        return
            bytes(baseURI).length != 0
                ? string(abi.encodePacked(baseURI, tokenId.toString()))
                : "";
    }

    constructor() public ERC721A("crokies", "TEST") {}

    function mintingSale1(uint256 _quantity) external payable {
        require(
            totalSupply() + _quantity <= maxSupply,
            "Not enough tokens left"
        );
        require(
            msg.value == (mintSale1 * _quantity),
            "Please send full ethereum payment"
        );
        // ERROR: require(_quantity + [buyerData].numberMintedSale1(msg.sender) <= maxMintSale1, "You can only mint 3 NFTs in Sale 1");
        _safeMint(msg.sender, _quantity);
    }

    function mintingSale2(uint256 _quantity) external payable {
        require(
            totalSupply() + _quantity <= maxSupply,
            "Not enough tokens left"
        );
        require(
            msg.value == (mintSale2 * _quantity),
            "Please send full ethereum payment"
        );
        // ERROR: require(_quantity + [buyerData].numberMintedSale1(msg.sender) <= maxMintSale1, "You can only mint 3 NFTs in Sale 1");
        _safeMint(msg.sender, _quantity);
    }

    function mintingSale3(uint256 _quantity) external payable {
        require(
            totalSupply() + _quantity <= maxSupply,
            "Not enough tokens left"
        );
        require(
            msg.value == (mintSale3 * _quantity),
            "Please send full ethereum payment"
        );
        // ERROR: require(_quantity + [buyerData].numberMintedSale1(msg.sender) <= maxMintSale1, "You can only mint 3 NFTs in Sale 1");
        _safeMint(msg.sender, _quantity);
    }

    function mintingSale4(uint256 _quantity) external payable {
        require(
            totalSupply() + _quantity <= maxSupply,
            "Not enough tokens left"
        );
        require(
            msg.value == (mintSale4 * _quantity),
            "Please send full ethereum payment"
        );
        // ERROR: require(_quantity + [buyerData].numberMintedSale1(msg.sender) <= maxMintSale1, "You can only mint 3 NFTs in Sale 1");
        _safeMint(msg.sender, _quantity);
    }

    function mintingSale5(uint256 _quantity) external payable {
        require(
            totalSupply() + _quantity <= maxSupply,
            "Not enough tokens left"
        );
        require(
            msg.value == (mintSale5 * _quantity),
            "Please send full ethereum payment"
        );
        // ERROR: require(_quantity + [buyerData].numberMintedSale1(msg.sender) <= maxMintSale1, "You can only mint 3 NFTs in Sale 1");
        _safeMint(msg.sender, _quantity);
    }

    function withdraw(address payable _to) external onlyOwner {
        require(address(this).balance > 0, "Not enough funds to withdraw");
        _to.transfer;
    }

    function setBaseUri(string memory _newBaseURI) external onlyOwner {
        baseURI = _newBaseURI;
    }
}

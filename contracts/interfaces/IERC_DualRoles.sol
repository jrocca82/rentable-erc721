// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.3;

abstract contract IERC_DualRoles {
    // Logged when the user of a token assigns a new user or updates expires
    event UpdateUser(uint256 indexed tokenId, address indexed user, uint64 expires);

    // set the user role and expires of a token
    function setUser(uint256 tokenId, address user, uint64 expires) external virtual;

    // get the user of a token
    function userOf(uint256 tokenId) external view virtual returns(address);

    // get the user expires of a token
    function userExpires(uint256 tokenId) external view virtual returns(uint256);
}

pragma solidity ^0.4.11;


import "./Applications.sol";
import "./Developers.sol";

contract DeveloperApplications is Applications, Developers {

    mapping(address => mapping(uint => Application)) DeveloperApplicationsList;


}
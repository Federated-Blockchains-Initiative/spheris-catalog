pragma solidity ^0.4.11;



contract Developers {

    struct Developer {
        uint256 registrationBlock;
        string name;
        string email;
        string website;
    }

    struct DevelopersAddresses {
        address developerAddress;
    }

    mapping(address => Developer) public DevelopersList;


    DevelopersAddresses[] public DevelopersAddressesList;

    mapping(address => bool ) public RegisteredAddresses;


    function register(string _name, string _email, string _website) public {

        assert( RegisteredAddresses[msg.sender] == false );

        DevelopersList[msg.sender].name     = _name;
        DevelopersList[msg.sender].email    = _email;
        DevelopersList[msg.sender].website  = _website;
        DevelopersList[msg.sender].registrationBlock  = block.number;
        RegisteredAddresses[msg.sender] = true;

        DevelopersAddressesList.push(DevelopersAddresses(msg.sender));

    }

    function getDevelopersCount() public returns (uint) {
        return DevelopersAddressesList.length;
    }

    function getDeveloperById(uint _id) public returns (address) {
        return DevelopersAddressesList[_id].developerAddress;
    }

}
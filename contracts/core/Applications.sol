pragma solidity ^0.4.11;


contract Applications {

    enum ApplicationPlatform { Windows, Linux, Android, macOS }

    struct Application {
        address developer;
        string name;
        uint category;
        ApplicationPlatform platform;
        string downloadUrl;
        string description;
        string imageUrl;
    }

    Application[] public ApplicationsList;

    function getApplicationsCount() public returns(uint) {
        return ApplicationsList.length;
    }

}
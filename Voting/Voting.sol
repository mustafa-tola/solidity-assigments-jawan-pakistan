pragma solidity ^0.8.16;

contract Voting {
    mapping(address => bool) blacklistedVoters;
    address owner;
    mapping (string => uint) parties;

    constructor() {
        owner = msg.sender;
        parties["PTI"] = 0;
        parties["PMLN"] = 0;
        parties["PPP"] = 0;
    }

    function setVoterStatus(address voter) public {
        require(owner == msg.sender,"You are not an admin");
        blacklistedVoters[voter] = false;
    }

    function votePti() public {
        require(blacklistedVoters[msg.sender] == false,"You can not vote");
        parties["PTI"] += 1;
    }

    function votePmln() public {
        require(blacklistedVoters[msg.sender] == false,"You can not vote");
        parties["PMLN"] += 1;
    }

    function votePpp() public {
        require(blacklistedVoters[msg.sender] == false,"You can not vote");
        parties["PPP"] += 1;
    }

    function getVotesStatus() public view returns (uint,uint,uint) {
        require(owner == msg.sender,"You are not an admin");
        return (parties["PTI"],parties["PMLN"],parties["PPP"]);
    }
}
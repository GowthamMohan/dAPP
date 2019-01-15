pragma solidity ^0.5.0;

contract Election {
  // model a candidate
  struct Candidate {
  	uint id;
  	string name;
  	uint voteCount;
  }

  // store candidate
  // fetch candidate
  mapping(uint => Candidate) public candidates;
  // store candidate count
  uint public candidatesCount;

    // Constructor
    constructor() public {
    	addCandidate("Candidate1");
    	addCandidate("Candidate2");
    
    }

    function addCandidate (string memory _name) private {
    	candidatesCount ++;
    	candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);

    }
}
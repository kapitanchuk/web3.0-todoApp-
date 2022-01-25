//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.2;

contract todoList{
    uint8 count;

    struct Task{
        uint id;
        string content;
        bool completed;
    }

    mapping (uint=>Task) public tasks;

    constructor() public {
        addTask("steal data or something");
    }

    function addTask(string memory _content)public{
        tasks[count] = Task(count,_content,false);
        incrementCount();
    }

    function incrementCount()internal{
        count++;
    }
}
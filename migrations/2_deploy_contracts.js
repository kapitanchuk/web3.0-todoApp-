const todoList = artifacts.require("todoList");

module.exports = function (deployer){
  deployer.deploy(todoList);
};

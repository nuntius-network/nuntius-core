var Shipment = artifacts.require("./Shipment.sol");

module.exports = function(deployer) {
  deployer.deploy(Shipment, 2000, 2000, 2000, 2000);
};

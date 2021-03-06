pragma solidity ^0.4.11;

import "zeppelin/ownership/Ownable.sol";
import "./Shipment.sol";

contract ShipmentManager is Ownable {
  uint public shipmentCount = 0;

  function ShipmentManager() {}

  function createShipment(uint _maxStamps, uint _pickupLatitude, uint _pickupLongitude, uint _deliveryLatitude, uint _deliveryLongitude) public returns (address) {
    Shipment s = new Shipment(msg.sender, _maxStamps, _pickupLatitude, _pickupLongitude, _deliveryLatitude, _deliveryLongitude);
    NewShipment(address(s), msg.sender, shipmentCount);
    return (address(s));
  }

  event NewShipment(address shipment, address sender, uint shipmentCount);
}

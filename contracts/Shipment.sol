pragma solidity ^0.4.11;

import "zeppelin/ownership/Ownable.sol";

contract Shipment is Ownable {
	enum Status { Pending, Assigned }

	address public carrier;
	address public sender;

	struct Point {
		uint latitude;
		uint longitude;
	}

	function getPickup() public constant returns (uint, uint) {
		return (pickup.latitude, pickup.longitude);
	}

	function getDelivery() public constant returns (uint, uint) {
		return (delivery.latitude, delivery.longitude);
	}

	function getStatus() public constant returns (Status) {
		return status;
	}

	Point pickup;
	Point delivery;

	Status status;

	uint public maxStamps;

	function Shipment(address _sender, uint _maxStamps, uint _pickupLatitude, uint _pickupLongitude, uint _deliveryLatitude, uint _deliveryLongitude) {
		sender = _sender;
		maxStamps = _maxStamps;
		status = Status.Pending;
		pickup = Point(_pickupLatitude, _pickupLongitude);
		delivery = Point(_deliveryLatitude, _deliveryLongitude);
		StatusChanged(address(this), Status.Pending);
	}

	event StatusChanged(address shipment, Status status);
}

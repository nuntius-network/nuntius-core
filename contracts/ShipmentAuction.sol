pragma solidity ^0.4.4;

import "zeppelin/ownership/Ownable.sol";
import "./Shipment.sol";

contract ShipmentAuction is Ownable {
  function ShipmentAuction() { }

  struct Bid {
    uint stamps;
  }

  mapping(address => bool) public auctionCompletion;
  mapping(address => Bid[]) public bids;

  function startAuctionForShipment(address shipmentAddress) {
    auctionCompletion[shipmentAddress] = false;
    /*AuctionStarted(address shipmentAddress);*/
  }

  /*event AuctionStarted(address shipmentAddress);*/
}

var Shipment = artifacts.require('Shipment')

contract('Shipment', accounts => {
  it('should initialize shipment correctly', async () => {
    shipment = await Shipment.new(1, 0, 1, 0)

    pickup = await shipment.getPickup()

    assert.equal(pickup[0], 1, 'pickup latitude must be assigned')
    assert.equal(pickup[1], 0, 'pickup longitude must be assigned')

    delivery = await shipment.getDelivery()

    assert.equal(delivery[0], 1, 'delivery latitude must be assigned')
    assert.equal(delivery[1], 0, 'delivery longitude must be assigned')

    assert.equal(await shipment.getStatus(), 0, 'status must be pending')
  })
});
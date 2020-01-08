const Taxi = function(manufacturer, model) {
  this.manufacturer = manufacturer;
  this.model = model;
  this.passengers = [];
};

Taxi.prototype.numberOfPassengers = function() {
  return this.passengers.length;
};

Taxi.prototype.addPassenger = function(passenger) {
  this.passengers.push(passenger);
};

Taxi.prototype.removePassengerByName = function(passenger) {
  const indexOfPassenger = this.passengers.indexOf(passenger);
  this.passengers.shift(indexOfPassenger, 1);
};

Taxi.prototype.removeAllPassengers = function() {
  this.passengers.pop(0, this.numberOfPassengers());
};

module.exports = Taxi;

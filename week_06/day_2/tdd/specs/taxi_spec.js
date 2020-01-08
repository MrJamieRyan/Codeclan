const assert = require("assert");
const Taxi = require("../taxi.js");

describe("Taxi", function() {
  let taxi;

  beforeEach(function() {
    taxi = new Taxi("Toyota", "Prius"); // Arrange
  });

  it("should have a manufacturer", function() {
    const actual = taxi.manufacturer; //Act
    assert.strictEqual(actual, "Toyota"); //Assert
  });
  it("should have a model", function() {
    const actual = taxi.model;
    assert.strictEqual(actual, "Prius");
  });

  describe("passengers", function() {
    it("should start no passengers", function() {
      const actual = taxi.passengers;
      assert.deepStrictEqual(actual, []);
    });
  });
});

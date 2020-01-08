const assert = require('assert')
const Room = require('../room.js')

describe('Room', function(){

  let room1;
  let room2;

  beforeEach(function (){
    room1 = new Room(0);
    room2 = new Room(5);
  })

  it('should start not painted', function(){
    const actual = room1.paintedArea
    assert.strictEqual(actual, 0)
  })

  it('should be able to be painted', function(){
    room1.paintRoom(6);
    actual = room1.paintedArea;
    expected = 6;
    assert.strictEqual(actual, expected);
  })
});

const Room = function(areaInMeters){
  this.areaInMeters = areaInMeters;
  this.paintedArea = 0;
};

Room.prototype.paintRoom = function(areaPainted){
  this.paintedArea = areaPainted
};

module.exports = Room;

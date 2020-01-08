const Decorator = function(){
  this.paintStock = [];
};

Decorator.prototype.addPaintCan = function(paintCan){
  this.paintStock.push(paintCan);
};

Decorator.prototype.checkStockLitres = function(){
  let litres = 0

  for (let i = 0; i < this.paintStock.length; i++) {
    litres += this.paintStock[i].litres
  }
  return litres;
};

Decorator.prototype.hasEnoughPaint = function(room){
  const litresAvailable = this.checkStockLitres();
  if (room.areaInMeters <= litresAvailable) {
    return true
  } else {
    return false
  };
};

Decorator.prototype.paintRoom = function(room){
  if (this.hasEnoughPaint(room) === true) {
    room.paintedArea = room.areaInMeters;
  } else {
    return "NOT ENOUGH PAINT, FOOL!"
  }
};

module.exports = Decorator;

class Tile {
  /*A Tile holds properties of the terrain */
  int slope;   //Slope of tile
  int soil;  
  LandType landT;
  Tile(LandType lt){
    /* Initializes Tile with LandType lt, slope & soil are at default 0 values */
    landT = lt;
  }
  
  Tile(LandType lt, int sl, int so) {
   /* Initializes Tile with LandType lt, and integer slope sl, soil so values */
   landT = lt;
   slope = sl;
   soil = so;
  }
  
  //TO-DO
  int getSlope() {
    /*Retuns slope of the tile */
    return 0;
  }
  
  //TO-DO
  int getSoil() {
    /* Returns the soil permeability of the tile */
    return 0;
  }
  
  //TO-DO
  LandType getLandT() {
    /* Returns the LandType object of the Tile */
    return null;
  }
  
  void changeLandType(LandType lt) {
    /* Changes the LandType held by the Tile to lt */
    landT = lt;
  }
  
  int getPollution() {
    /* Returns the pollution generated by the LandUse held by the Tile */
    try {
      LandUse lu = (LandUse)landT;
      return lu.getPollution();
    }catch(RuntimeException e) {
      return 0;
    }
  }
}
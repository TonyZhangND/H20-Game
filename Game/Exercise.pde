//Defining pollution as global variables
final int factoryPollution = 10;
final int farmPollution = 12;
final int housePollution = 6;
final int forestPollution = -2;
final int dirtPollution = 0;

int getPollution(LandUse lu) {
    /*Returns the default pollution value of each landUse
    *This method is used to set the default pollution values when game is initialized*/
    if (lu instanceof Factory) return factoryPollution;
    else if (lu instanceof Farm) return farmPollution;
    else if (lu instanceof House) return housePollution;
    else if (lu instanceof Forest) return forestPollution;
    else if (lu instanceof Dirt) return dirtPollution;
    else return 0;
}

float calcDecayPollution(Tile t) {
   /* Returns the pollution entering river of Tile t according to distance decay model.  */
   if (! (t.getLandUse() instanceof Forest) && !(t.getLandUse() instanceof River)){
     float decayPollution = t.getTilePollution()/(t.getDistToRiver()/2+0.5);
     return decayPollution;
   } else return t.getTilePollution();
}

float distToRiver(int x, int y) {
    /* Helper: Returns the distance of location <x, y> to closest River Tile. */
    float minDist = (float) Integer.MAX_VALUE;
    for (int[] rCoords: riverTiles) {
      float d = dist(x, y, rCoords[0], rCoords[1]);
      if (d < minDist) minDist = d;
   }
   return minDist;
}


 
 
 
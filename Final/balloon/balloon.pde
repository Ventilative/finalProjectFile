Map randomMap;
char[][] map;
PImage grass;
PImage road;
void setup(){
  grass = loadImage("grass.jpg");
  grass.resize(1000,1000);
  image(grass,0,0);
  image(grass,1000,0);
  road = loadImage("road.jpg");
  road.resize(0,100);
  size(2000,1000);
  randomMap = new Map(10,20);
  randomMap.solve();
  map = randomMap.getMap();
  System.out.println(randomMap);
  for (int row = 0; row < map.length; row ++){
    for (int col = 0; col < map[0].length; col ++){
      if (map[row][col] == '@' || map[row][col] == 'E' || map[row][col] == 'F'){
        image(road,col*100, row*100);
      }
    }
  }
}

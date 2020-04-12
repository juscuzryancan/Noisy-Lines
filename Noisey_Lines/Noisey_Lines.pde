int scale = 1;
int amp = 20;
int lines = 100;
float t = 0;
//distanceToEdge width/2


void setup() {
  size(600, 600);
  surface.setResizable(true);
  background(255);
  //randomSeed(1);
  
}

void draw() {

  for (int i = 0; i < lines ; i++) {
    beginShape();
    for (int j = 0; j<= width; j++) {
      
      t += 0.1;
      float rand = noise(t);
      float fluct = map(rand, 0, 1, -amp,amp);
      
      vertex(j, (i * 2 * amp) + amp + fluct);
    }
    endShape();
  }
  noLoop();
  //saveFrame("noisyLine-####.png");
}

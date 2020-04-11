


void setup() {
  size(640, 640);
  background(255);
}

void draw() {
  float fluct = random(1);
  fluct = map(fluct, 0, 1, -10, 10);
  for (int i = 0; i < height/20; i++) {
    for (int j = 0; j<= width; j++) {
      point(j, i * 20 + 20 + fluct);
    }
  }
  noLoop();
}

float ptsX[] = new float[15];
float ptsY[] = new float[15];
float decrem[] = new float[15];
float decrem2[] = new float[25];
float side[] = new float[25];
float c;

void setup() {
  size(600, 600);
  background(0, 0, 0);
  for (int i = 0; i < 25; i++) {
    ptsX[i] = width/2;
    ptsY[i] = height/2;
    decrem[i] = random(-5, 5);
    decrem2[i] = random(-5, 5);
    side[i] = 0;
  }
}

void draw() {
  background(0, 0, 0);
  stroke(255, 255, 255);
  fill(255, 255, 255);
  for (int j = 0; j < 25; j++) {
    rect(ptsX[j], ptsY[j], side[j], side[j]);
    side[j] += 0.01;
    ptsX[j] += decrem2[j];
    ptsY[j] += decrem[j];
    if (ptsY[j] <= 0 || ptsY[j] >= height || ptsX[j] <= 0 || ptsX[j] >= width) {
      ptsX[j] = width/2;
      ptsY[j] = height/2;
      decrem[j] = random(-5, 5);
      decrem2[j] = random(-5, 5);
      side[j] = 0;
    }
  }
}

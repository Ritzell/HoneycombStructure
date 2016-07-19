final float radius = 15.0;
float cx = 0;

void setup() {
  size(1200, 640);
  background(102);
  smooth(10);
  
  for(int y = -400; y < height*2; y += radius - radius/5){
     cx = cx == 0 ? radius*3/2 : 0;
  for(float x = -400 + cx; x < width*2; x += radius*3){
      pushMatrix();
      polygon(x, y, radius, 6);
      popMatrix(); 
    }
  }
}

void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
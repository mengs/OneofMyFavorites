// One of my favorate things - bike
// Meng Shi
// Copyright: CC By-NC


void setup() {
  size(800, 800);
  smooth();
}

void draw() {
  background(255);
  //  bike(0, 0, 0.5);
  //  bike(10, 0, 0.5);
  for (int j=0;j<4;j++) {
    for (int i=0;i<4;i++) {
      bike(120+130*j,65+ 150*i, 0.3);
    }
  }
}

void keyPressed(){
saveFrame("mybike.png");}


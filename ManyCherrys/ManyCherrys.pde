// One of my favorate things - cherry
// Meng Shi
// Copyright: CC By-NC


void setup() {
  size(800, 800);
  smooth();
}

void draw() {
  background(255);
//  cherry(0, 0, 1);
  for (int j=0;j<4;j++) {
    for (int i=0;i<4;i++){
      cherry(100+145*i,100+140*j, 0.28);
    }
  }
}

void keyPressed() {
  saveFrame("mycherry.png");
}


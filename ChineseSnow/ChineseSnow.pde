/**
 * Brightness Tracking 
 * by Golan Levin. 
 *
 * Tracks the brightest pixel in a live cam signal. 
 */

// import libarary
import processing.video.*;
Capture cam;

// Declaration and Initilization
PFont myFont= createFont("Adobe heiti Std", 24);
String myStr = "君不见黄河之水天上来奔流到海不复回"; // total length is 13
char[]letters = new char[myStr.length()];

float px=1;
float[]py=new float[myStr.length()];
float pd;

//setup canvas and 
void setup() {
  size(640, 480);
  // Uses the default cam input, see the reference if this causes an error
  cam = new Capture(this, width, height);
  cam.start();  
  smooth();
  pd=cam.width/(myStr.length());
}

//
void draw() {
  if (cam.available()) {
    cam.read();
    // Draw the webcam cam onto the screen
    //    cam.loadPixels(); }
    // cam.filter(GRAY);// threshold method
    image(cam, 0, 0, width, height);

    letters();
  }
}

// the falling letter function
void letters()
{ 
  px=0;
  for (int i=0; i<myStr.length();i++)
  {
    letters[i]=myStr.charAt(i);
  }
  cam.loadPixels();

  // for each letter
  for ( int i =0; i<myStr.length(); i++)
  {

    // evenly space by width
    px=px+pd;
    int pix = int( px+(py[i]+2)*cam.width);

    // if y is too great, wrap around
    if (py[i]>height) {
      py[i]=0;
    }
    // if it is too dark, it stops falling/bouncing
    if (pix>=cam.pixels.length | pix<0)
    {
      py[i]=0;
    }
    else if (brightness(cam.pixels[pix]) < 30) {
      py[i]-=8;
    }
    // otherwise fall
    else{py[i]+=8;
    }


    // display
    fill(255);
    textFont(myFont);
    textAlign(CENTER, CENTER);
    //    println(py[i]);
    pushMatrix();
    translate(px, py[i]);
    //    println("LETTER: "+letters[i]+", x: "+px+", y: "+py[i]);
    text(letters[i], 0, 0);// py[i]);
    popMatrix();
  }
}

// any keypress to exit
void keyPressed() {
  exit();
}


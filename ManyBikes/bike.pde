void bike(int x, int y, float s) {
  pushMatrix();
  translate(x,y);
  scale(s);
  
  int wheelLx, wheelLy, wheelRx, wheelRy, wheelRd, frameTrix, frameTriy, frameTriRd, pedal1x, pedal1y, pedal2x, pedal2y;
  int frameSitx, frameSity, framehandx, framehandy, framehanddownx, framehanddowny, frameTopx, frameTopy;
  int handle1x, handle1y, handle2x, handle2y, handle3x, handle3y, handle4x, handle4y, handle5x, handle5y, handle6x, handle6y, handle6ax, handle6ay, handle8x, handle8y;
  float handlecenterr, handlecenterx, handlecentery;


  wheelLx=142;
  wheelLy=366;
  wheelRx=474;
  wheelRy=368;
  wheelRd=116;
  frameTrix=274;
  frameTriy=384;
  frameTriRd=36;
  frameTopx=212;
  frameTopy=163;

  pedal1x=215;
  pedal1y=390;
  pedal2x=336;
  pedal2y=378;

  frameSitx=228;
  frameSity=217;
  framehandx=415;
  framehandy=217;
  framehanddownx=418;
  framehanddowny=220;

  handle1x=407;
  handle1y=191;
  handle2x=434;
  handle2y=177;

  handlecenterr=33;
  handlecenterx=448;
  handlecentery=208;

  handle3x=178;
  handle3y=154;
  handle4x=185;
  handle4y=161;
  handle5x=198;
  handle5y=165;
  handle6x=216;
  handle6y=159;
  handle6ax=251;
  handle6ay=147;
  handle8x=272;
  handle8y=154;

  // left wheel
  stroke( 0 );
  strokeWeight(5);
  noFill();
  ellipseMode(CENTER);
  ellipse(wheelLx, wheelLy, wheelRd*2, wheelRd*2);
  ellipse(wheelRx, wheelRy, wheelRd*2, wheelRd*2);
  int i =1;
  while (wheelRd>0) {
    stroke( i*16 );
    ellipse(wheelLx, wheelLy, wheelRd*2, wheelRd*2);
    ellipse(wheelRx, wheelRy, wheelRd*2, wheelRd*2);
    wheelRd=wheelRd-10;
    i++;
  }
  stroke( 0 );
  fill(255);
  strokeWeight( 0);
  ellipse(wheelLx, wheelLy, wheelRd*3, wheelRd*3);
  ellipse(wheelRx, wheelRy, wheelRd*3, wheelRd*3);
  strokeWeight( 3);
  noFill();
  ellipse(frameTrix, frameTriy, frameTriRd*2, frameTriRd*2);

  //pedal
  line(frameTrix, frameTriy, pedal1x, pedal1y);
  line(pedal2x, pedal2y, pedal1x, pedal1y);
  line(pedal2x-10, pedal2y-1, pedal2x+10, pedal2y+1);
  line(pedal1x-10, pedal1y-1, pedal1x+10, pedal1y+1);


  //frame
  stroke( 0 );
  strokeWeight( 3 );
  line(wheelLx, wheelLy, frameTrix, frameTriy);
  line(frameTopx, frameTopy, frameTrix, frameTriy);
  line(wheelLx, wheelLy, frameSitx, frameSity);
  line(framehandx, framehandy, frameSitx, frameSity);
  line(framehanddownx, framehanddowny, frameTrix, frameTriy);
  line(handle1x, handle1y, wheelRx, wheelRy);

  stroke( 0 );
  fill(0);
  strokeWeight( 0);
  ellipse(frameTrix, frameTriy, wheelRd*2, wheelRd*2);

  //handle
  strokeWeight(4);
  line(handle1x, handle1y, handle2x, handle2y ); 
  noFill();
  strokeWeight(4);
  arc(handlecenterx, handlecentery, handlecenterr*2, handlecenterr*2, PI/2.7+PI, PI*7/3);

  //sit
  beginShape( );
  strokeWeight( 3 );
  curveVertex(handle3x, handle3y);   // a control point
  curveVertex(handle3x, handle3y);  
  curveVertex(handle4x, handle4y );
  curveVertex(handle5x, handle5y);
  curveVertex(handle6x, handle6y);
  curveVertex(handle6ax, handle6ay);
  curveVertex(handle8x, handle8y); 
  curveVertex(handle8x, handle8y);    // a control point
  endShape( );
  popMatrix();

}


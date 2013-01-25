void cherry(int x, int y, float s) {
  pushMatrix();
  translate(x, y);
  scale(s);
  // declaration
  int c1x, c1y, c2x, c2y, cr;
  // cherry1, cherry2 positions
  int leaveCenterX, leaveCenterY, l1x, l1y, l2x, l2y, l3x, l3y, r1x, r1y, r2x, r2y, r3x, r3y;
  // leave left, leave right positions
  int bl1x, bl1y, bl2x, bl2y, bl3x, bl3y, br1x, br1y, br2x, br2y, br3x, br3y;
  // branch left, branch right vertext positions

  // initialization
  c1x=229;
  c1y=426;
  c2x=406;
  c2y=368;
  cr=280;

  leaveCenterX=385;
  leaveCenterY=56;
  l1x=260;
  l1y=30;
  l2x=167;
  l2y=121;
  l3x=300;
  l3y=140;
  r1x=476;
  r1y=112;
  r2x=480;
  r2y=213;
  r3x=390;
  r3y=154;

  bl1x=236;
  bl1y=150;
  bl2x=331;
  bl2y=182;
  bl3x=340;
  bl3y=242;

  br1x=275;
  br1y=170;
  br2x=280;
  br2y=205;
  br3x=240;
  br3y=285;

  // cherry leaves
  strokeWeight(1);
  quad(leaveCenterX, leaveCenterY, l1x, l1y, l2x, l2y, l3x, l3y);
  quad(leaveCenterX, leaveCenterY, r1x, r1y, r2x, r2y, r3x, r3y);
  fill(0, 200);
  triangle(leaveCenterX, leaveCenterY, l2x, l2y, l3x, l3y);
  triangle(leaveCenterX, leaveCenterY, r2x, r2y, r1x, r1y);
  noFill();


  // cherry branches
  beginShape( );
  stroke(102);
  strokeWeight( 2 );
  curveVertex(leaveCenterX, leaveCenterY);   // a control point
  curveVertex(leaveCenterX, leaveCenterY); 
  //  curveVertex(bl1x, bl1y);   
  curveVertex( bl2x, bl2y);  
  curveVertex( bl3x, bl3y );
  curveVertex( bl3x, bl3y );// a control point
  endShape( );



  beginShape( );
  stroke(102);
  strokeWeight( 2 );
  curveVertex( leaveCenterX, leaveCenterY);// a control point
  curveVertex(leaveCenterX, leaveCenterY); 
  curveVertex( br2x, br2y);
  curveVertex(br3x, br3y);
  curveVertex(br3x, br3y); // a control point
  endShape( );

  //two lovely cherries
  float i=1.0;
  while (cr > 0) {
    strokeWeight(3);
    stroke(i);
    noFill();
    ellipse(c1x, c1y, cr, cr);
    ellipse(c2x, c2y, cr, cr);
    cr-=26;
    i=i*2;
  }
  stroke( 0 );

  popMatrix();
}


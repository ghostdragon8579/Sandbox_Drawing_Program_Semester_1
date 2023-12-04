//Global Variables
float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
int appWidth, appHeight;
int size;
//
void setup() {
  //
  println("Width:"+width, "\t", "Height:"+height);
  //
  size(1600, 1000);
  int appWidth = width;
  int appHeight = height;
  //
  xRectBackground = appWidth*1/6;
  yRectBackground = appHeight*0;
  widthRectBackground = appWidth*4/6;
  heightRectBackground = appHeight-1;
  //
} //End setup
//
void draw() {
  //
  rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  //
} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed
//
//End MAIN Program

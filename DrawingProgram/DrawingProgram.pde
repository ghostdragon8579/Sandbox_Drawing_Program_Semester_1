//Global Variables
PImage QuitButton;
PFont QuestionFont;
String Yes = "Yes";
String No = "No";
String Question = "Are you sure you want to quit?";
color Gray=#AFAFAF;
color DarkGreen=#02B703;
color DarkRed=#AA021B;
color ResetDefaultInk=#FFFFFF;
color Blue=#0004C4;
color Green=#00C41F;
color Red=#E5074A;
color Yellow=#FAE603;
color Cyan=#03FACA;
color Purple=#8906D1;
color Brown=#986005;
color Magenta=#E507C1;
color Orange=#F5BC00;
color Black=#000000;
color DrawingColor=#000000;
float ConfirmationBackgroundx, ConfirmationBackgroundy, ConfirmationBackgroundwidth, ConfirmationBackgroundheight;
float xConfirmationYes, yConfirmationYes, widthConfirmationYes, heightConfirmationYes;
float xConfirmationNo, yConfirmationNo, widthConfirmationNo, heightConfirmationNo;
float xConfirmationQuestion, yConfirmationQuestion, widthConfirmationQuestion, heightConfirmationQuestion;
float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
float xNoDrawZone1, yNoDrawZone1, widthNoDrawZone1, heightNoDrawZone1;
float xNoDrawZone2, yNoDrawZone2, widthNoDrawZone2, heightNoDrawZone2;
float xBlue, yBlue, widthBlue, heightBlue;
float xGreen, yGreen, widthGreen, heightGreen;
float xRed, yRed, widthRed, heightRed;
float xYellow, yYellow, widthYellow, heightYellow;
float xCyan, yCyan, widthCyan, heightCyan;
float xPurple, yPurple, widthPurple, heightPurple;
float xColorSelection, yColorSelection, widthColorSelection, heightColorSelection;
float xWidthSelection, yWidthSelection, widthWidthSelection, heightWidthSelection;
int appWidth, appHeight;
int size;
Boolean ExitConfirmation=false;
//
void setup() {
  //
  println("Width:"+width, "\t", "Height:"+height);
  //
  size(1600, 1000);
  int appWidth = width;
  int appHeight = height;
  //
  String open = "/";
  String up = "..";
  String imagesPath = up + open;
  String Imagefolder = "Images for the Celebration Card4";
  String QuitImage = "exet.png";
  QuitButton = loadImage(imagesPath + Imagefolder + open + QuitImage);
  //
  xRectBackground = appWidth*1/6;
  yRectBackground = appHeight*0;
  widthRectBackground = appWidth*4/6;
  heightRectBackground = appHeight-1;
  //
  ConfirmationBackgroundx = appWidth*0;
  ConfirmationBackgroundy = appHeight*0;
  ConfirmationBackgroundwidth = appWidth-1;
  ConfirmationBackgroundheight = appHeight-1;
  //
  xConfirmationYes = appWidth*1/4;
  yConfirmationYes = appHeight*3/7;
  widthConfirmationYes = appWidth*1/7;
  heightConfirmationYes = appHeight*2/11;
  //
  xConfirmationNo = appWidth*3/5;
  yConfirmationNo = yConfirmationYes;
  widthConfirmationNo = appWidth*1/7;
  heightConfirmationNo = heightConfirmationYes;
  //
  xConfirmationQuestion = appWidth*1/4;
  yConfirmationQuestion = appHeight*1/6;
  widthConfirmationQuestion = appWidth*1/2;
  heightConfirmationQuestion = appHeight*2/13;
  //
  xRectQuit = appWidth*11/12;
  yRectQuit = appHeight*1/1000;
  widthRectQuit = appWidth*1/12;
  heightRectQuit = appHeight*1/8;
  //
  xColorSelection = appWidth*1/30;
  yColorSelection = appHeight*1/11;
  widthColorSelection = appWidth*2/21;
  heightColorSelection = appHeight*1/3;
  //
  xBlue = appWidth*1/25;
  yBlue = appHeight*1/10;
  widthBlue = appWidth*2/70;
  heightBlue = appHeight*3/70;
  //
  xGreen = appWidth*1/11;
  yGreen = appHeight*1/10;
  widthGreen = appWidth*2/70;
  heightGreen = appHeight*3/70;
  //
  xRed = appWidth*1/25;
  yRed = appHeight*3/20; 
  widthRed = appWidth*2/70;
  heightRed = appHeight*3/70;
  //
  xYellow = appWidth*1/11;
  yYellow = yRed;
  widthYellow = widthRed;
  heightYellow = heightRed;
  //
  xWidthSelection = appWidth*1/30;
  yWidthSelection = appHeight*6/11;
  widthWidthSelection = appWidth*2/21;
  heightWidthSelection = appHeight*1/3;
  //
  xNoDrawZone1 = appWidth*1/1000;
  yNoDrawZone1 = yRectBackground;
  widthNoDrawZone1 = appWidth*1/6;
  heightNoDrawZone1 = heightRectBackground;
  //
  xNoDrawZone2 = appWidth*5/6;
  yNoDrawZone2 = yRectBackground;
  widthNoDrawZone2 = appWidth*1/6;
  heightNoDrawZone2 = heightRectBackground;
  //
  QuestionFont = createFont("Arial", 55);
  //
  noStroke();
  rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  //
} //End setup
//
void draw() {
  //
  if(mouseButton == LEFT){
    noStroke();
    if (mouseX>xRectBackground && mouseX<xRectBackground+widthRectBackground && mouseY>yRectBackground && mouseY<yRectBackground+heightRectBackground)
    fill(DrawingColor);
    rect(mouseX-15, mouseY-15, 30, 30);
    fill(ResetDefaultInk);
  }
  if(mouseButton == RIGHT){
    fill(ResetDefaultInk);
    noStroke();
    if (mouseX>xRectBackground && mouseX<xRectBackground+widthRectBackground && mouseY>yRectBackground && mouseY<yRectBackground+heightRectBackground)
    rect(mouseX-45, mouseY-45, 90, 90);
    fill(ResetDefaultInk);
  }
  stroke(1);
  rect(xNoDrawZone1, yNoDrawZone1, widthNoDrawZone1, heightNoDrawZone1);
  rect(xNoDrawZone2, yNoDrawZone2, widthNoDrawZone2, heightNoDrawZone2);
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  image(QuitButton, xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  fill(Gray);
  rect(xColorSelection, yColorSelection, widthColorSelection, heightColorSelection);
  fill(Blue);
  rect(xBlue, yBlue, widthBlue, heightBlue);
  fill(Green);
  rect(xGreen, yGreen, widthGreen, heightGreen);
  fill(Red);
  rect(xRed, yRed, widthRed, heightRed);
  fill(Yellow);
  rect(xYellow, yYellow, widthYellow, heightYellow);
  fill(Gray);
  rect(xWidthSelection, yWidthSelection, widthWidthSelection, heightWidthSelection);
  fill(ResetDefaultInk);
  //
} //End draw
//
void keyPressed() {
  //
} //End keyPressed
//
void mousePressed() {
  //
  if (mouseX>xRectQuit && mouseX<xRectQuit+widthRectQuit && mouseY>yRectQuit && mouseY<yRectQuit+heightRectQuit) exit();
  //if (mouseX>xRectQuit && mouseX<xRectQuit+widthRectQuit && mouseY>yRectQuit && mouseY<yRectQuit+heightRectQuit) ExitConfirmation=true;
  //if (mouseX>xConfirmationNo && mouseX<xConfirmationNo+widthConfirmationNo && mouseY>yConfirmationNo && mouseY<yConfirmationNo+heightConfirmationNo) ExitConfirmation=false;
  //if (mouseX>xConfirmationYes && mouseX<xConfirmationYes+widthConfirmationYes && mouseY>yConfirmationYes && mouseY<yConfirmationYes+heightConfirmationYes) exit();
  if (mouseX>xBlue && mouseX<xBlue+widthBlue && mouseY>yBlue && mouseY<yBlue+heightBlue) DrawingColor=Blue;
  if (mouseX>xGreen && mouseX<xGreen+widthGreen && mouseY>yGreen && mouseY<yGreen+heightGreen) DrawingColor=Green;
  if (mouseX>xRed && mouseX<xRed+widthRed && mouseY>yRed && mouseY<yRed+heightRed) DrawingColor=Red;
  if (mouseX>xYellow && mouseX<xYellow+widthYellow && mouseY>yYellow && mouseY<yYellow+heightYellow) DrawingColor=Yellow;
  //
} //End mousePressed
//
//End MAIN Program

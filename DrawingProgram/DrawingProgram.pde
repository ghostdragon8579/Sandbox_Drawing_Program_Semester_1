//Global Variables
PImage QuitButton;
PImage EraseButton;
PFont GeneralFont;
PFont TitleFont;
String Colors = "Drawing Colors";
String Width = "Drawing Width";
String Selection = "Selected Color";
String Selection2 = "Selected Width";
String Yes = "Yes";
String No = "No";
String Erase = "Erase all";
String Question = "Are you sure you would like to quit?";
String EraseQuestion = "Are you sure you want to erase all?";
color DarkGreen=#02B703;
color DarkRed=#AA021B;
color LightGray=#EAE8E8;
color ResetDefaultInk=#FFFFFF;
color Blue=#0004C4;
color Green=#00C41F;
color Red=#FF0000;
color Yellow=#FAE603;
color Cyan=#03FACA;
color Purple=#8906D1;
color Brown=#986005;
color Magenta=#E507C1;
color Orange=#FFA615;
color Navy=#09629B;
color Gray=#AFAFAF;
color Black=#000000;
color DrawingColor=#000000;
color ErasingColor=ResetDefaultInk;
float ConfirmationBackgroundx, ConfirmationBackgroundy, ConfirmationBackgroundwidth, ConfirmationBackgroundheight;
float xConfirmationYes, yConfirmationYes, widthConfirmationYes, heightConfirmationYes;
float xConfirmationNo, yConfirmationNo, widthConfirmationNo, heightConfirmationNo;
float xConfirmationQuestion, yConfirmationQuestion, widthConfirmationQuestion, heightConfirmationQuestion;
float EraseConfirmationBackgroundx, EraseConfirmationBackgroundy, EraseConfirmationBackgroundwidth,EraseConfirmationBackgroundheight;
float xEraseConfirmationYes, yEraseConfirmationYes, widthEraseConfirmationYes, heightEraseConfirmationYes;
float xEraseConfirmationNo, yEraseConfirmationNo, widthEraseConfirmationNo, heightEraseConfirmationNo;
float xEraseConfirmationQuestion, yEraseConfirmationQuestion, widthEraseConfirmationQuestion, heightEraseConfirmationQuestion;
float xWidth1, yWidth1, widthWidth1, heightWidth1;
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
float xBrown, yBrown, widthBrown, heightBrown;
float xMagenta, yMagenta, widthMagenta, heightMagenta;
float xOrange, yOrange, widthOrange, heightOrange;
float xNavy, yNavy, widthNavy, heightNavy;
float xGray, yGray, widthGray, heightGray;
float xBlack, yBlack, widthBlack, heightBlack;
float xErase, yErase, widthErase, heightErase;
float xDrawSize1, yDrawSize1, widthDrawSize1, heightDrawSize1;
float xDrawSize2, yDrawSize2, widthDrawSize2, heightDrawSize2;
float xDrawSize3, yDrawSize3, widthDrawSize3, heightDrawSize3;
float xDrawSize4, yDrawSize4, widthDrawSize4, heightDrawSize4;
float xDrawSize5, yDrawSize5, widthDrawSize5, heightDrawSize5;
float xDrawSize6, yDrawSize6, widthDrawSize6, heightDrawSize6;
float xColorTitle, yColorTitle, widthColorTitle, heightColorTitle;
float xColorSelection, yColorSelection, widthColorSelection, heightColorSelection;
float xWidthTitle, yWidthTitle, widthWidthTitle, heightWidthTitle;
float xWidthSelection, yWidthSelection, widthWidthSelection, heightWidthSelection;
float DrawVariable1, DrawVariable2, DrawVariable3;
float EraseVariable1, EraseVariable2;
float ColorTextx, ColorTexty, ColorTextwidth, ColorTextheight;
float ColorIndicator1, ColorIndicator2, ColorIndicator3;
float WidthTextx, WidthTexty, WidthTextwidth, WidthTextheight;
float WidthIndicator1, WidthIndicator2;
int appWidth, appHeight;
int size;
Boolean ExitConfirmation=false;
Boolean EraseConfirmation=false;
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
  String Imagefolder = "DrawingProgramImages";
  String QuitImage = "exet.png";
  String EraserImage = "Eraser.png";
  QuitButton = loadImage(imagesPath + Imagefolder + open + QuitImage);
  EraseButton = loadImage(imagesPath + Imagefolder + open + EraserImage);
  //
  xRectBackground = appWidth*1/6;
  yRectBackground = appHeight*0;
  widthRectBackground = appWidth*4/6;
  heightRectBackground = appHeight-1;
  //
  xRectQuit = appWidth*15/16;
  yRectQuit = appHeight*1/1000;
  widthRectQuit = appWidth*1/16;
  heightRectQuit = appHeight*1/16;
  //
  xConfirmationYes = appWidth*41/48; yConfirmationYes = appHeight*1/4; widthConfirmationYes = appWidth*3/48; heightConfirmationYes = appHeight*1/22;
  xConfirmationNo = appWidth*11/12; yConfirmationNo = yConfirmationYes; widthConfirmationNo = widthConfirmationYes; heightConfirmationNo = heightConfirmationYes;
  xConfirmationQuestion = appWidth*41/48; yConfirmationQuestion = appHeight*1/10; widthConfirmationQuestion = appWidth*6/48; heightConfirmationQuestion = appHeight*3/26;
  //
  xColorTitle = appWidth*1/30; yColorTitle = appHeight*1/20; widthColorTitle = appWidth*2/21; heightColorTitle = appHeight*3/70;
  xColorSelection = appWidth*1/30; yColorSelection = appHeight*1/11; widthColorSelection = appWidth*2/21; heightColorSelection = appHeight*5/16; 
  xBlue = appWidth*1/25; yBlue = appHeight*1/10; widthBlue = appWidth*2/70; heightBlue = appHeight*3/70;
  xGreen = appWidth*1/11; yGreen = appHeight*1/10; widthGreen = widthBlue; heightGreen = heightBlue;
  xRed = appWidth*1/25; yRed = appHeight*3/20; widthRed = widthBlue; heightRed = heightBlue;
  xYellow = appWidth*1/11; yYellow = yRed; widthYellow = widthBlue; heightYellow = heightBlue;
  xCyan = appWidth*1/25; yCyan = appHeight*4/20; widthCyan = widthBlue; heightCyan = heightBlue;
  xPurple = appWidth*1/11; yPurple = appHeight*4/20; widthPurple = widthBlue; heightPurple = heightBlue;
  xBrown = appWidth*1/25; yBrown = appHeight*5/20; widthBrown = widthBlue; heightBrown = heightBlue;
  xMagenta = appWidth*1/11; yMagenta = appHeight*5/20; widthMagenta = widthBlue; heightMagenta = heightBlue;
  xOrange = appWidth*1/25; yOrange = appHeight*6/20; widthOrange = widthBlue; heightOrange = heightBlue;
  xNavy = appWidth*1/11; yNavy = appHeight*6/20; widthNavy = widthBlue; heightNavy = heightBlue;
  xGray = appWidth*1/25; yGray = appHeight*7/20; widthGray = widthBlue; heightGray = heightBlue;
  xBlack = appWidth*1/11; yBlack = appHeight*7/20; widthBlack = widthBlue; heightBlack = heightBlue;
  xErase = appWidth*1/18; yErase = appHeight*1/11+appHeight*5/16; widthErase = appWidth*1/21; heightErase = appHeight*1/13;
  //
  xWidthTitle = appWidth*1/30; yWidthTitle = appHeight*504/1000; widthWidthTitle = appWidth*2/21; heightWidthTitle = appHeight*3/70;
  xWidthSelection = appWidth*1/30; yWidthSelection = appHeight*6/11; widthWidthSelection = appWidth*2/21; heightWidthSelection = appHeight*5/16;
  xDrawSize1 = appWidth*1/25; yDrawSize1 = appHeight*28/50; widthDrawSize1 = appWidth*6/75; heightDrawSize1 = appHeight*5/80;
  xDrawSize2 = xDrawSize1; yDrawSize2 = appHeight*45/70; widthDrawSize2 = widthDrawSize1; heightDrawSize2 = appHeight*4/80;
  xDrawSize3 = xDrawSize1; yDrawSize3 = appHeight*57/80; widthDrawSize3 = widthDrawSize1; heightDrawSize3 = appHeight*3/80;
  xDrawSize4 = xDrawSize1; yDrawSize4 = appHeight*77/100; widthDrawSize4 = widthDrawSize1; heightDrawSize4 = appHeight*2/80;
  xDrawSize5 = xDrawSize1; yDrawSize5 = appHeight*163/200; widthDrawSize5 = widthDrawSize1; heightDrawSize5 = appHeight*1/80;
  xDrawSize6 = xDrawSize1; yDrawSize6 = appHeight*169/200; widthDrawSize6 = widthDrawSize1; heightDrawSize6 = appHeight*1/160;
  xNoDrawZone1 = appWidth*1/1000; yNoDrawZone1 = yRectBackground; widthNoDrawZone1 = appWidth*1/6; heightNoDrawZone1 = heightRectBackground;
  xNoDrawZone2 = appWidth*5/6; yNoDrawZone2 = yRectBackground; widthNoDrawZone2 = widthNoDrawZone1; heightNoDrawZone2 = heightRectBackground;
  ColorTextx = appWidth*2/25; ColorTexty = appHeight*113/130; ColorTextwidth = appWidth*2/25; ColorTextheight = heightColorTitle;
  WidthTextx = appWidth*1/600; WidthTexty = ColorTexty; WidthTextwidth = appWidth*2/25; WidthTextheight = heightWidthTitle;
  //
  ColorIndicator1 = appWidth*3/25;
  ColorIndicator2 = appHeight*95/100;
  ColorIndicator3 = appWidth*1/25;
  //
  WidthIndicator1 = appWidth*1/24;
  WidthIndicator2 = ColorIndicator2;
  //
  DrawVariable1 = -15;
  DrawVariable2 = -15;
  DrawVariable3 = 30;
  //
  GeneralFont = createFont("Arial", 55);
  TitleFont = createFont("Times New Roman Bold", 55);
  //
  noStroke();
  rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  //
} //End setup
//
void draw() {
  //
  if(mouseButton == LEFT && ExitConfirmation==false){
    noStroke();
    if (mouseX>xRectBackground && mouseX<xRectBackground+widthRectBackground && mouseY>yRectBackground && mouseY<yRectBackground+heightRectBackground)
    fill(DrawingColor);
    rect(mouseX+DrawVariable1, mouseY+DrawVariable2, DrawVariable3, DrawVariable3);
    fill(ResetDefaultInk);
  }
  if(mouseButton == RIGHT && ExitConfirmation==false){
    fill(ResetDefaultInk);
    noStroke();
    if (mouseX>xRectBackground && mouseX<xRectBackground+widthRectBackground && mouseY>yRectBackground && mouseY<yRectBackground+heightRectBackground)
    rect(mouseX-45, mouseY-45, 90, 90);
    fill(ResetDefaultInk);
  }
  stroke(1);
  fill(Gray);
  rect(xNoDrawZone1, yNoDrawZone1, widthNoDrawZone1, heightNoDrawZone1);
  rect(xNoDrawZone2, yNoDrawZone2, widthNoDrawZone2, heightNoDrawZone2);
  fill(LightGray);
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  image(QuitButton, xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  rect(xColorTitle, yColorTitle, widthColorTitle, heightColorTitle);
  rect(xColorSelection, yColorSelection, widthColorSelection, heightColorSelection);
  rect(ColorTextx, ColorTexty, ColorTextwidth, ColorTextheight);
  rect(xWidthTitle, yWidthTitle, widthWidthTitle, heightWidthTitle);
  rect(xWidthSelection, yWidthSelection, widthWidthSelection, heightWidthSelection);
  rect(WidthTextx, WidthTexty, WidthTextwidth, WidthTextheight);
  fill(Blue);
  rect(xBlue, yBlue, widthBlue, heightBlue);
  fill(Green);
  rect(xGreen, yGreen, widthGreen, heightGreen);
  fill(Red);
  rect(xRed, yRed, widthRed, heightRed);
  fill(Yellow);
  rect(xYellow, yYellow, widthYellow, heightYellow);
  fill(Cyan);
  rect(xCyan, yCyan, widthCyan, heightCyan);
  fill(Purple);
  rect(xPurple, yPurple, widthPurple, heightPurple);
  fill(Brown);
  rect(xBrown, yBrown, widthBrown, heightBrown);
  fill(Magenta);
  rect(xMagenta, yMagenta, widthMagenta, heightMagenta);
  fill(Orange);
  rect(xOrange, yOrange, widthOrange, heightOrange);
  fill(Navy);
  rect(xNavy, yNavy, widthNavy, heightNavy);
  fill(Gray);
  rect(xGray, yGray, widthGray, heightGray);
  fill(Black);
  rect(xBlack, yBlack, widthBlack, heightBlack);
  fill(LightGray);
  rect(xErase, yErase, widthErase, heightErase);
  fill(ResetDefaultInk);
  image(EraseButton, xErase, yErase, widthErase, heightErase);
  fill(Black);
  circle(WidthIndicator1, WidthIndicator2, DrawVariable3);
  rect(xDrawSize1, yDrawSize1, widthDrawSize1, heightDrawSize1); 
  rect(xDrawSize2, yDrawSize2, widthDrawSize2, heightDrawSize2);
  rect(xDrawSize3, yDrawSize3, widthDrawSize3, heightDrawSize3);
  rect(xDrawSize4, yDrawSize4, widthDrawSize4, heightDrawSize4);
  rect(xDrawSize5, yDrawSize5, widthDrawSize5, heightDrawSize5);
  rect(xDrawSize6, yDrawSize6, widthDrawSize6, heightDrawSize6);
  fill(DrawingColor);
  circle(ColorIndicator1, ColorIndicator2, ColorIndicator3);
  fill(ResetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 20;
  textFont(TitleFont, size); 
  text(Colors, xColorTitle, yColorTitle, widthColorTitle, heightColorTitle);
  fill(ResetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 20;
  textFont(TitleFont, size); 
  text(Width, xWidthTitle, yWidthTitle, widthWidthTitle, heightWidthTitle);
  fill(ResetDefaultInk);
  //
  fill(DrawingColor);
  textAlign(CENTER, CENTER); 
  size = 19;
  textFont(TitleFont, size); 
  text(Selection, ColorTextx, ColorTexty, ColorTextwidth, ColorTextheight);
  fill(ResetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 19;
  textFont(TitleFont, size); 
  text(Selection2, WidthTextx, WidthTexty, WidthTextwidth, WidthTextheight);
  fill(ResetDefaultInk);
  //
  color hoverOverColor=color(255, 255, 255, 64); 
  if (mouseX>xRectQuit && mouseX<xRectQuit+widthRectQuit && mouseY>yRectQuit && mouseY<yRectQuit+heightRectQuit) {
    fill(hoverOverColor);
    rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
    fill(ResetDefaultInk);
  }
  if (mouseX>xErase && mouseX<xErase+widthErase && mouseY>yErase && mouseY<yErase+heightErase) {
    fill(hoverOverColor);
    rect(xErase, yErase, widthErase, heightErase);
    fill(ResetDefaultInk);
  }
  if (mouseX>xDrawSize1 && mouseX<xDrawSize1+widthDrawSize1 && mouseY>yDrawSize1 && mouseY<yDrawSize1+heightDrawSize1) {
    fill(hoverOverColor);
    rect(xDrawSize1, yDrawSize1, widthDrawSize1, heightDrawSize1);
    fill(ResetDefaultInk);
  }
  if (mouseX>xDrawSize2 && mouseX<xDrawSize2+widthDrawSize2 && mouseY>yDrawSize2 && mouseY<yDrawSize2+heightDrawSize2) {
    fill(hoverOverColor);
    rect(xDrawSize2, yDrawSize2, widthDrawSize2, heightDrawSize2);
    fill(ResetDefaultInk);
  }
  if (mouseX>xDrawSize3 && mouseX<xDrawSize3+widthDrawSize3 && mouseY>yDrawSize3 && mouseY<yDrawSize3+heightDrawSize3) {
    fill(hoverOverColor);
    rect(xDrawSize3, yDrawSize3, widthDrawSize3, heightDrawSize3);
    fill(ResetDefaultInk);
  }
  if (mouseX>xDrawSize4 && mouseX<xDrawSize4+widthDrawSize4 && mouseY>yDrawSize4 && mouseY<yDrawSize4+heightDrawSize4) {
    fill(hoverOverColor);
    rect(xDrawSize4, yDrawSize4, widthDrawSize4, heightDrawSize4);
    fill(ResetDefaultInk);
  }
  if (mouseX>xDrawSize5 && mouseX<xDrawSize5+widthDrawSize5 && mouseY>yDrawSize5 && mouseY<yDrawSize5+heightDrawSize5) {
    fill(hoverOverColor);
    rect(xDrawSize5, yDrawSize5, widthDrawSize5, heightDrawSize5);
    fill(ResetDefaultInk);
  }
  if (mouseX>xDrawSize6 && mouseX<xDrawSize6+widthDrawSize6 && mouseY>yDrawSize6 && mouseY<yDrawSize6+heightDrawSize6) {
    fill(hoverOverColor);
    rect(xDrawSize6, yDrawSize6, widthDrawSize6, heightDrawSize6);
    fill(ResetDefaultInk);
  }
  if (mouseX>xBlue && mouseX<xBlue+widthBlue && mouseY>yBlue && mouseY<yBlue+heightBlue) {
    fill(hoverOverColor);
    rect(xBlue, yBlue, widthBlue, heightBlue);
    fill(ResetDefaultInk);
  }
  if (mouseX>xGreen && mouseX<xGreen+widthGreen && mouseY>yGreen && mouseY<yGreen+heightGreen) {
    fill(hoverOverColor);
    rect(xGreen, yGreen, widthGreen, heightGreen);
    fill(ResetDefaultInk);
  }
  if (mouseX>xRed && mouseX<xRed+widthRed && mouseY>yRed && mouseY<yRed+heightRed) {
    fill(hoverOverColor);
    rect(xRed, yRed, widthRed, heightRed);
    fill(ResetDefaultInk);
  }
  if (mouseX>xYellow && mouseX<xYellow+widthYellow && mouseY>yYellow && mouseY<yYellow+heightYellow) {
    fill(hoverOverColor);
    rect(xYellow, yYellow, widthYellow, heightYellow);
    fill(ResetDefaultInk);
  }
  if (mouseX>xCyan && mouseX<xCyan+widthCyan && mouseY>yCyan && mouseY<yCyan+heightCyan) {
    fill(hoverOverColor);
    rect(xCyan, yCyan, widthCyan, heightCyan);
    fill(ResetDefaultInk);
  }
  if (mouseX>xPurple && mouseX<xPurple+widthPurple && mouseY>yPurple && mouseY<yPurple+heightPurple) {
    fill(hoverOverColor);
    rect(xPurple, yPurple, widthPurple, heightPurple);
    fill(ResetDefaultInk);
  }
  if (mouseX>xBrown && mouseX<xBrown+widthBrown && mouseY>yBrown && mouseY<yBrown+heightBrown) {
    fill(hoverOverColor);
    rect(xBrown, yBrown, widthBrown, heightBrown);
    fill(ResetDefaultInk);
  }
  if (mouseX>xMagenta && mouseX<xMagenta+widthMagenta && mouseY>yMagenta && mouseY<yMagenta+heightMagenta) {
    fill(hoverOverColor);
    rect(xMagenta, yMagenta, widthMagenta, heightMagenta);
    fill(ResetDefaultInk);
  }
  if (mouseX>xOrange && mouseX<xOrange+widthOrange && mouseY>yOrange && mouseY<yOrange+heightOrange) {
    fill(hoverOverColor);
    rect(xOrange, yOrange, widthOrange, heightOrange);
    fill(ResetDefaultInk);
  }
  if (mouseX>xNavy && mouseX<xNavy+widthNavy && mouseY>yNavy && mouseY<yNavy+heightNavy) {
    fill(hoverOverColor);
    rect(xNavy, yNavy, widthNavy, heightNavy);
    fill(ResetDefaultInk);
  }
  if (mouseX>xGray && mouseX<xGray+widthGray && mouseY>yGray && mouseY<yGray+heightGray) {
    fill(hoverOverColor);
    rect(xGray, yGray, widthGray, heightGray);
    fill(ResetDefaultInk);
  }
  if (mouseX>xBlack && mouseX<xBlack+widthBlack && mouseY>yBlack && mouseY<yBlack+heightBlack) {
    fill(hoverOverColor);
    rect(xBlack, yBlack, widthBlack, heightBlack);
    fill(ResetDefaultInk);
  }
  //
  if (ExitConfirmation==true) ExitConfirmation();
  //
} //End draw
//
void keyPressed() {
  //
  //
} //End keyPressed
//
void mousePressed() {
  //
  if (mouseX>xRectQuit && mouseX<xRectQuit+widthRectQuit && mouseY>yRectQuit && mouseY<yRectQuit+heightRectQuit) ExitConfirmation=true;
  if (mouseX>xConfirmationNo && mouseX<xConfirmationNo+widthConfirmationNo && mouseY>yConfirmationNo && mouseY<yConfirmationNo+heightConfirmationNo) ExitConfirmation=false;
  if (mouseX>xConfirmationYes && mouseX<xConfirmationYes+widthConfirmationYes && mouseY>yConfirmationYes && mouseY<yConfirmationYes+heightConfirmationYes && ExitConfirmation==true) exit();
  if (mouseX>xBlue && mouseX<xBlue+widthBlue && mouseY>yBlue && mouseY<yBlue+heightBlue && ExitConfirmation==false) DrawingColor=Blue;
  if (mouseX>xGreen && mouseX<xGreen+widthGreen && mouseY>yGreen && mouseY<yGreen+heightGreen && ExitConfirmation==false) DrawingColor=Green;
  if (mouseX>xRed && mouseX<xRed+widthRed && mouseY>yRed && mouseY<yRed+heightRed && ExitConfirmation==false) DrawingColor=Red;
  if (mouseX>xYellow && mouseX<xYellow+widthYellow && mouseY>yYellow && mouseY<yYellow+heightYellow && ExitConfirmation==false) DrawingColor=Yellow;
  if (mouseX>xCyan && mouseX<xCyan+widthCyan && mouseY>yCyan && mouseY<yCyan+heightCyan && ExitConfirmation==false) DrawingColor=Cyan;
  if (mouseX>xPurple && mouseX<xPurple+widthPurple && mouseY>yPurple && mouseY<yPurple+heightPurple && ExitConfirmation==false) DrawingColor=Purple;
  if (mouseX>xBrown && mouseX<xBrown+widthBrown && mouseY>yBrown && mouseY<yBrown+heightBrown && ExitConfirmation==false) DrawingColor=Brown;
  if (mouseX>xMagenta && mouseX<xMagenta+widthMagenta && mouseY>yMagenta && mouseY<yMagenta+heightMagenta && ExitConfirmation==false) DrawingColor=Magenta;
  if (mouseX>xOrange && mouseX<xOrange+widthOrange && mouseY>yOrange && mouseY<yOrange+heightOrange && ExitConfirmation==false) DrawingColor=Orange;
  if (mouseX>xNavy && mouseX<xNavy+widthNavy && mouseY>yNavy && mouseY<yNavy+heightNavy && ExitConfirmation==false) DrawingColor=Navy;
  if (mouseX>xGray && mouseX<xGray+widthGray && mouseY>yGray && mouseY<yGray+heightGray && ExitConfirmation==false) DrawingColor=Gray;
  if (mouseX>xBlack && mouseX<xBlack+widthBlack && mouseY>yBlack && mouseY<yBlack+heightBlack && ExitConfirmation==false) DrawingColor=Black;
  if (mouseX>xErase && mouseX<xErase+widthErase && mouseY>yErase && mouseY<yErase+heightErase && ExitConfirmation==false) DrawingColor=ErasingColor;
  //
  if (mouseX>xDrawSize1 && mouseX<xDrawSize1+widthDrawSize1 && mouseY>yDrawSize1 && mouseY<yDrawSize1+heightDrawSize1 && ExitConfirmation==false) {
    DrawVariable1 = -35;
    DrawVariable2 = -35;
    DrawVariable3 = heightDrawSize1;
  }
  if (mouseX>xDrawSize2 && mouseX<xDrawSize2+widthDrawSize2 && mouseY>yDrawSize2 && mouseY<yDrawSize2+heightDrawSize2 && ExitConfirmation==false) {
    DrawVariable1 = -30;
    DrawVariable2 = -30;
    DrawVariable3 = heightDrawSize2;
  }
  if (mouseX>xDrawSize3 && mouseX<xDrawSize3+widthDrawSize3 && mouseY>yDrawSize3 && mouseY<yDrawSize3+heightDrawSize3 && ExitConfirmation==false) {
    DrawVariable1 = -15;
    DrawVariable2 = -15;
    DrawVariable3 = heightDrawSize3;
  }
  if (mouseX>xDrawSize4 && mouseX<xDrawSize4+widthDrawSize4 && mouseY>yDrawSize4 && mouseY<yDrawSize4+heightDrawSize4 && ExitConfirmation==false) {
    DrawVariable1 = -10;
    DrawVariable2 = -10;
    DrawVariable3 = heightDrawSize4;
  }
  if (mouseX>xDrawSize5 && mouseX<xDrawSize5+widthDrawSize5 && mouseY>yDrawSize5 && mouseY<yDrawSize5+heightDrawSize5 && ExitConfirmation==false) {
    DrawVariable1 = -5;
    DrawVariable2 = -5;
    DrawVariable3 = heightDrawSize5;
  }
  if (mouseX>xDrawSize6 && mouseX<xDrawSize6+widthDrawSize6 && mouseY>yDrawSize6 && mouseY<yDrawSize6+heightDrawSize6 && ExitConfirmation==false) {
    DrawVariable1 = -2.5;
    DrawVariable2 = -2.5;
    DrawVariable3 = heightDrawSize6;
  }
  //
} //End mousePressed
//
//End MAIN Program

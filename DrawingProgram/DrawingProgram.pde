//Global Variables
PImage QuitButton;
PImage EraseButton;
PFont GeneralFont;
PFont TitleFont;
String Colors = "Drawing Colors";
String Width = "Drawing Width";
String Shape = "Shape Selection";
String OutlineColor = "Outline Colors";
String Selection = "Selected Color";
String Selection2 = "Selected Width";
String Yes = "Yes";
String No = "No";
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
color StrokeColor=#000000;
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
float xColorTitle, yColorTitle, widthColorTitle, heightColorTitle;
float xColorSelection, yColorSelection, widthColorSelection, heightColorSelection;
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
float xStrokeTitle, yStrokeTitle, widthStrokeTitle, heightStrokeTitle;
float xStrokeSelection, yStrokeSelection, widthStrokeSelection, heightStrokeSelection;
float xStrokeBlue, yStrokeBlue, widthStrokeBlue, heightStrokeBlue;
float xStrokeGreen, yStrokeGreen, widthStrokeGreen, heightStrokeGreen;
float xStrokeRed, yStrokeRed, widthStrokeRed, heightStrokeRed;
float xStrokeYellow, yStrokeYellow, widthStrokeYellow, heightStrokeYellow;
float xStrokeCyan, yStrokeCyan, widthStrokeCyan, heightStrokeCyan;
float xStrokePurple, yStrokePurple, widthStrokePurple, heightStrokePurple;
float xStrokeBrown, yStrokeBrown, widthStrokeBrown, heightStrokeBrown;
float xStrokeMagenta, yStrokeMagenta, widthStrokeMagenta, heightStrokeMagenta;
float xStrokeOrange, yStrokeOrange, widthStrokeOrange, heightStrokeOrange;
float xStrokeNavy, yStrokeNavy, widthStrokeNavy, heightStrokeNavy;
float xStrokeGray, yStrokeGray, widthStrokeGray, heightStrokeGray;
float xStrokeBlack, yStrokeBlack, widthStrokeBlack, heightStrokeBlack;
float xStrokeErase, yStrokeErase, widthStrokeErase, heightStrokeErase;
float xWidthTitle, yWidthTitle, widthWidthTitle, heightWidthTitle;
float xWidthSelection, yWidthSelection, widthWidthSelection, heightWidthSelection;
float xDrawSize1, yDrawSize1, widthDrawSize1, heightDrawSize1;
float xDrawSize2, yDrawSize2, widthDrawSize2, heightDrawSize2;
float xDrawSize3, yDrawSize3, widthDrawSize3, heightDrawSize3;
float xDrawSize4, yDrawSize4, widthDrawSize4, heightDrawSize4;
float xDrawSize5, yDrawSize5, widthDrawSize5, heightDrawSize5;
float xDrawSize6, yDrawSize6, widthDrawSize6, heightDrawSize6;
float xDrawSize7, yDrawSize7, widthDrawSize7, heightDrawSize7;
float xShapeTitle, yShapeTitle, widthShapeTitle, heightShapeTitle;
float xShapeSelection, yShapeSelection, widthShapeSelection, heightShapeSelection;
float xTriangle1, yTriangle1, xTriangle2, yTriangle2, xTriangle3, yTriangle3;
float xCircle, yCircle, CircleDimensions;
float xRectangle, yRectangle, widthRectangle, heightRectangle;
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
Boolean DrawSquare=false;
Boolean DrawCircle=false;
Boolean DrawTriangle=false;
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
  xColorTitle = appWidth*0; yColorTitle = appHeight*0; widthColorTitle = appWidth*1/12; heightColorTitle = appHeight*3/70;
  xColorSelection = appWidth*0; yColorSelection = appHeight*3/70; widthColorSelection = appWidth*1/12; heightColorSelection = appHeight*47/128; 
  xBlue = widthColorSelection*1/7; yBlue = appHeight*4/70; widthBlue = widthColorSelection*1/3; heightBlue = appHeight*3/70;
  xGreen = widthColorSelection*4/7; yGreen = appHeight*4/70; widthGreen = widthBlue; heightGreen = heightBlue;
  xRed = xBlue; yRed = appHeight*15/140; widthRed = widthBlue; heightRed = heightBlue;
  xYellow = xGreen; yYellow = yRed; widthYellow = widthBlue; heightYellow = heightBlue;
  xCyan = xBlue; yCyan = appHeight*22/140; widthCyan = widthBlue; heightCyan = heightBlue;
  xPurple = xGreen; yPurple = yCyan; widthPurple = widthBlue; heightPurple = heightBlue;
  xBrown = xBlue; yBrown = appHeight*29/140; widthBrown = widthBlue; heightBrown = heightBlue;
  xMagenta = xGreen; yMagenta = yBrown; widthMagenta = widthBlue; heightMagenta = heightBlue;
  xOrange = xBlue; yOrange = appHeight*36/140; widthOrange = widthBlue; heightOrange = heightBlue;
  xNavy = xGreen; yNavy = yOrange; widthNavy = widthBlue; heightNavy = heightBlue;
  xGray = xBlue; yGray = appHeight*43/140; widthGray = widthBlue; heightGray = heightBlue;
  xBlack = xGreen; yBlack = yGray; widthBlack = widthBlue; heightBlack = heightBlue;
  xErase = widthColorSelection*1/3; yErase = heightColorSelection-appHeight*1/140; widthErase = widthBlue; heightErase = heightBlue;
  //
  xStrokeTitle = appWidth*1/12; yStrokeTitle = yColorTitle; widthStrokeTitle = widthColorTitle; heightStrokeTitle = heightColorTitle;
  xStrokeSelection = xStrokeTitle; yStrokeSelection = yColorSelection; widthStrokeSelection = widthStrokeTitle; heightStrokeSelection = heightColorSelection;
  xStrokeBlue = widthStrokeSelection*1/7+widthStrokeSelection; yStrokeBlue = yBlue; widthStrokeBlue = widthBlue; heightStrokeBlue = heightBlue;
  xStrokeGreen = widthStrokeSelection*4/7+widthStrokeSelection; yStrokeGreen = yGreen; widthStrokeGreen = widthGreen; heightStrokeGreen = heightGreen;
  xStrokeRed = xStrokeBlue; yStrokeRed = yRed; widthStrokeRed = widthRed; heightStrokeRed = heightRed;
  xStrokeYellow = xStrokeGreen; yStrokeYellow = yYellow; widthStrokeYellow = widthYellow; heightStrokeYellow = heightYellow;
  xStrokeCyan = xStrokeBlue; yStrokeCyan = yCyan; widthStrokeCyan = widthCyan; heightStrokeCyan = heightCyan;
  xStrokePurple = xStrokeGreen; yStrokePurple = yPurple; widthStrokePurple = widthPurple; heightStrokePurple = heightPurple;
  xStrokeBrown = xStrokeBlue; yStrokeBrown = yBrown; widthStrokeBrown = widthBrown; heightStrokeBrown = heightBrown;
  xStrokeMagenta = xStrokeGreen; yStrokeMagenta = yMagenta; widthStrokeMagenta = widthMagenta; heightStrokeMagenta = heightMagenta;
  xStrokeOrange = xStrokeBlue; yStrokeOrange = yOrange; widthStrokeOrange = widthOrange; heightStrokeOrange = heightOrange;
  xStrokeNavy = xStrokeGreen; yStrokeNavy = yNavy; widthStrokeNavy = widthNavy; heightStrokeNavy = heightNavy;
  xStrokeGray = xStrokeBlue; yStrokeGray = yGray; widthStrokeGray = widthGray; heightStrokeGray = heightGray;
  xStrokeBlack = xStrokeGreen; yStrokeBlack = yBlack; widthStrokeBlack = widthBlack; heightStrokeBlack = heightBlack;
  xStrokeErase = widthStrokeSelection+widthStrokeSelection*1/3; yStrokeErase = yErase; widthStrokeErase = widthStrokeBlue; heightStrokeErase = heightStrokeBlue;
  //
  xWidthTitle = appWidth*0; yWidthTitle = appHeight*15/140+appHeight*5/16; widthWidthTitle = appWidth*1/12; heightWidthTitle = appHeight*3/70;
  xWidthSelection = xWidthTitle; yWidthSelection = appHeight*15/140+appHeight*5/16+heightErase; widthWidthSelection = widthWidthTitle; heightWidthSelection = appHeight*5/16;
  xDrawSize1 = appWidth*1/140; yDrawSize1 = appHeight*3/7+heightWidthTitle; widthDrawSize1 = appWidth*10/150+xDrawSize1*1/2; heightDrawSize1 = appHeight*5/80;
  xDrawSize2 = xDrawSize1; yDrawSize2 = appHeight*1/2+heightWidthTitle; widthDrawSize2 = widthDrawSize1; heightDrawSize2 = appHeight*4/80;
  xDrawSize3 = xDrawSize1; yDrawSize3 = appHeight*81/144+heightWidthTitle; widthDrawSize3 = widthDrawSize1; heightDrawSize3 = appHeight*3/80;
  xDrawSize4 = xDrawSize1; yDrawSize4 = appHeight*8/13+heightWidthTitle; widthDrawSize4 = widthDrawSize1; heightDrawSize4 = appHeight*2/80;
  xDrawSize5 = xDrawSize1; yDrawSize5 = appHeight*17/26+heightWidthTitle; widthDrawSize5 = widthDrawSize1; heightDrawSize5 = appHeight*1/80;
  xDrawSize6 = xDrawSize1; yDrawSize6 = appHeight*136/200+heightWidthTitle; widthDrawSize6 = widthDrawSize1; heightDrawSize6 = appHeight*1/160;
  xDrawSize7 = xDrawSize1; yDrawSize7 = appHeight*7/10+heightWidthTitle; widthDrawSize7 = widthDrawSize1; heightDrawSize7 = appHeight*1/320;
  //
  xShapeTitle = appWidth*1/12; yShapeTitle = yWidthTitle; widthShapeTitle = widthWidthTitle; heightShapeTitle = heightWidthTitle;
  xShapeSelection = xShapeTitle; yShapeSelection = yWidthSelection; widthShapeSelection = widthWidthSelection; heightShapeSelection = heightWidthSelection;
  xTriangle1 = appWidth*3/24; yTriangle1 = appHeight*1/2+heightShapeTitle*2; 
  xTriangle2 = appWidth*9/96; yTriangle2 = yTriangle1+appWidth*1/24;
  xTriangle3 = appWidth*15/96; yTriangle3 = yTriangle2;
  xCircle = xTriangle1; yCircle = appHeight*23/32; CircleDimensions = appHeight*1/14;
  xRectangle = appWidth*5/48; yRectangle = appHeight*31/64; widthRectangle = appHeight*1/14; heightRectangle = widthRectangle;
  //
  xNoDrawZone1 = appWidth*0; yNoDrawZone1 = yRectBackground; widthNoDrawZone1 = appWidth*1/6; heightNoDrawZone1 = heightRectBackground;
  xNoDrawZone2 = appWidth*5/6; yNoDrawZone2 = yRectBackground; widthNoDrawZone2 = widthNoDrawZone1; heightNoDrawZone2 = heightRectBackground;
  ColorTextx = xStrokeTitle; ColorTexty = appHeight*113/130; ColorTextwidth = widthStrokeTitle; ColorTextheight = heightColorTitle;
  WidthTextx = xWidthTitle; WidthTexty = ColorTexty; WidthTextwidth = widthWidthTitle; WidthTextheight = heightWidthTitle;
  //
  ColorIndicator1 = appWidth*3/25;
  ColorIndicator2 = appHeight*96/100;
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
    stroke(StrokeColor);
    strokeWeight(DrawVariable3*1/10);
    if (mouseX>xRectBackground && mouseX<xRectBackground+widthRectBackground && mouseY>yRectBackground && mouseY<yRectBackground+heightRectBackground)
    fill(DrawingColor);
    rect(mouseX+DrawVariable1, mouseY+DrawVariable2, DrawVariable3, DrawVariable3);
    fill(ResetDefaultInk);
    strokeWeight(1);
  }
  if(mouseButton == RIGHT && ExitConfirmation==false){
    fill(ResetDefaultInk);
    noStroke();
    if (mouseX>xRectBackground && mouseX<xRectBackground+widthRectBackground && mouseY>yRectBackground && mouseY<yRectBackground+heightRectBackground)
    circle(mouseX, mouseY, 90);
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
  rect(xWidthTitle, yWidthTitle, widthWidthTitle, heightWidthTitle);
  rect(xWidthSelection, yWidthSelection, widthWidthSelection, heightWidthSelection);
  rect(xShapeTitle, yShapeTitle, widthShapeTitle, heightShapeTitle);
  rect(xShapeSelection, yShapeSelection, widthShapeSelection, heightShapeSelection);
  rect(xStrokeTitle, yStrokeTitle, widthStrokeTitle, heightStrokeTitle);
  rect(xStrokeSelection, yStrokeSelection, widthStrokeSelection, heightStrokeSelection);
  rect(ColorTextx, ColorTexty, ColorTextwidth, ColorTextheight);
  rect(WidthTextx, WidthTexty, WidthTextwidth, WidthTextheight);
  fill(Blue);
  rect(xBlue, yBlue, widthBlue, heightBlue);
  rect(xStrokeBlue, yStrokeBlue, widthStrokeBlue, heightStrokeBlue);
  fill(Green);
  rect(xGreen, yGreen, widthGreen, heightGreen);
  rect(xStrokeGreen, yStrokeGreen, widthStrokeGreen, heightStrokeGreen);
  fill(Red);
  rect(xRed, yRed, widthRed, heightRed);
  rect(xStrokeRed, yStrokeRed, widthStrokeRed, heightStrokeRed);
  fill(Yellow);
  rect(xYellow, yYellow, widthYellow, heightYellow);
  rect(xStrokeYellow, yStrokeYellow, widthStrokeYellow, heightStrokeYellow);
  fill(Cyan);
  rect(xCyan, yCyan, widthCyan, heightCyan);
  rect(xStrokeCyan, yStrokeCyan, widthStrokeCyan, heightStrokeCyan);
  fill(Purple);
  rect(xPurple, yPurple, widthPurple, heightPurple);
  rect(xStrokePurple, yStrokePurple, widthStrokePurple, heightStrokePurple);
  fill(Brown);
  rect(xBrown, yBrown, widthBrown, heightBrown);
  rect(xStrokeBrown, yStrokeBrown, widthStrokeBrown, heightStrokeBrown);
  fill(Magenta);
  rect(xMagenta, yMagenta, widthMagenta, heightMagenta);
  rect(xStrokeMagenta, yStrokeMagenta, widthStrokeMagenta, heightStrokeMagenta);
  fill(Orange);
  rect(xOrange, yOrange, widthOrange, heightOrange);
  rect(xStrokeOrange, yStrokeOrange, widthStrokeOrange, heightStrokeOrange);
  fill(Navy);
  rect(xNavy, yNavy, widthNavy, heightNavy);
  rect(xStrokeNavy, yStrokeNavy, widthStrokeNavy, heightStrokeNavy);
  fill(Gray);
  rect(xGray, yGray, widthGray, heightGray);
  rect(xStrokeGray, yStrokeGray, widthStrokeGray, heightStrokeGray);
  fill(Black);
  rect(xBlack, yBlack, widthBlack, heightBlack);
  rect(xStrokeBlack, yStrokeBlack, widthStrokeBlack, heightStrokeBlack);
  fill(ResetDefaultInk);
  rect(xErase, yErase, widthErase, heightErase);
  rect(xStrokeErase, yStrokeErase, widthStrokeErase, heightStrokeErase);
  fill(Black);
  rect(xDrawSize1, yDrawSize1, widthDrawSize1, heightDrawSize1); 
  rect(xDrawSize2, yDrawSize2, widthDrawSize2, heightDrawSize2);
  rect(xDrawSize3, yDrawSize3, widthDrawSize3, heightDrawSize3);
  rect(xDrawSize4, yDrawSize4, widthDrawSize4, heightDrawSize4);
  rect(xDrawSize5, yDrawSize5, widthDrawSize5, heightDrawSize5);
  rect(xDrawSize6, yDrawSize6, widthDrawSize6, heightDrawSize6);
  rect(xDrawSize7, yDrawSize7, widthDrawSize7, heightDrawSize7);
  rect(xRectangle, yRectangle, widthRectangle, heightRectangle);
  triangle(xTriangle1, yTriangle1, xTriangle2, yTriangle2, xTriangle3, yTriangle3);
  circle(xCircle, yCircle, CircleDimensions);
  circle(WidthIndicator1, WidthIndicator2, DrawVariable3);
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
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 20;
  textFont(TitleFont, size); 
  text(Shape, xShapeTitle, yShapeTitle, widthShapeTitle, heightShapeTitle);
  fill(ResetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 20;
  textFont(TitleFont, size); 
  text(OutlineColor, xStrokeTitle, yStrokeTitle, widthStrokeTitle, heightStrokeTitle);
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
  HoverOverColor ();
  //
  if (ExitConfirmation==true) ExitConfirmation();
  //
} //End draw
//
void keyPressed() {
  //
  if(key == 'e' || key == 'E' && ExitConfirmation==false){
    fill(ResetDefaultInk);
    noStroke();
    rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  }
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
  if (mouseX>xStrokeBlue && mouseX<xStrokeBlue+widthStrokeBlue && mouseY>yStrokeBlue && mouseY<yStrokeBlue+heightStrokeBlue && ExitConfirmation==false) StrokeColor=Blue;
  if (mouseX>xStrokeGreen && mouseX<xStrokeGreen+widthStrokeGreen && mouseY>yStrokeGreen && mouseY<yStrokeGreen+heightStrokeGreen && ExitConfirmation==false) StrokeColor=Green;
  if (mouseX>xStrokeRed && mouseX<xStrokeRed+widthStrokeRed && mouseY>yStrokeRed && mouseY<yStrokeRed+heightStrokeRed && ExitConfirmation==false) StrokeColor=Red;
  if (mouseX>xStrokeYellow && mouseX<xStrokeYellow+widthStrokeYellow && mouseY>yStrokeYellow && mouseY<yStrokeYellow+heightStrokeYellow && ExitConfirmation==false) StrokeColor=Yellow;
  if (mouseX>xStrokeCyan && mouseX<xStrokeCyan+widthStrokeCyan && mouseY>yStrokeCyan && mouseY<yStrokeCyan+heightStrokeCyan && ExitConfirmation==false) StrokeColor=Cyan;
  if (mouseX>xStrokePurple && mouseX<xStrokePurple+widthStrokePurple && mouseY>yStrokePurple && mouseY<yStrokePurple+heightStrokePurple && ExitConfirmation==false) StrokeColor=Purple;
  if (mouseX>xStrokeBrown && mouseX<xStrokeBrown+widthStrokeBrown && mouseY>yStrokeBrown && mouseY<yStrokeBrown+heightStrokeBrown && ExitConfirmation==false) StrokeColor=Brown;
  if (mouseX>xStrokeMagenta && mouseX<xStrokeMagenta+widthStrokeMagenta && mouseY>yStrokeMagenta && mouseY<yStrokeMagenta+heightStrokeMagenta && ExitConfirmation==false) StrokeColor=Magenta;
  if (mouseX>xStrokeOrange && mouseX<xStrokeOrange+widthStrokeOrange && mouseY>yStrokeOrange && mouseY<yStrokeOrange+heightStrokeOrange && ExitConfirmation==false) StrokeColor=Orange;
  if (mouseX>xStrokeNavy && mouseX<xStrokeNavy+widthStrokeNavy && mouseY>yStrokeNavy && mouseY<yStrokeNavy+heightStrokeNavy && ExitConfirmation==false) StrokeColor=Navy;
  if (mouseX>xStrokeGray && mouseX<xStrokeGray+widthStrokeGray && mouseY>yStrokeGray && mouseY<yStrokeGray+heightStrokeGray && ExitConfirmation==false) StrokeColor=Gray;
  if (mouseX>xStrokeBlack && mouseX<xStrokeBlack+widthStrokeBlack && mouseY>yStrokeBlack && mouseY<yStrokeBlack+heightStrokeBlack && ExitConfirmation==false) StrokeColor=Black;
  if (mouseX>xStrokeErase && mouseX<xStrokeErase+widthStrokeErase && mouseY>yStrokeErase && mouseY<yStrokeErase+heightStrokeErase && ExitConfirmation==false) StrokeColor=ErasingColor;
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
  if (mouseX>xDrawSize7 && mouseX<xDrawSize7+widthDrawSize7 && mouseY>yDrawSize7 && mouseY<yDrawSize7+heightDrawSize7 && ExitConfirmation==false) {
    DrawVariable1 = -1.25;
    DrawVariable2 = -1.25;
    DrawVariable3 = heightDrawSize7;
  }
  //
} //End mousePressed
//
//End MAIN Program

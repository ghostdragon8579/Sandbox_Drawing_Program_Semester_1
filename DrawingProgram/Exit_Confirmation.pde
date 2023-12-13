void ExitConfirmation () {
  //
  fill(Gray);
  rect(ConfirmationBackgroundx, ConfirmationBackgroundy, ConfirmationBackgroundwidth, ConfirmationBackgroundheight);
  fill(ResetDefaultInk);
  rect(xConfirmationYes, yConfirmationYes, widthConfirmationYes, heightConfirmationYes);
  rect(xConfirmationNo, yConfirmationNo, widthConfirmationNo, heightConfirmationNo);
  rect(xConfirmationQuestion, yConfirmationQuestion, widthConfirmationQuestion, heightConfirmationQuestion);
  //
  color hoverOverColor=ResetDefaultInk;
  if (mouseX>xConfirmationYes && mouseX<xConfirmationYes+widthConfirmationYes && mouseY>yConfirmationYes && mouseY<yConfirmationYes+heightConfirmationYes) {
    hoverOverColor = Green;
    fill(hoverOverColor);
    rect(xConfirmationYes, yConfirmationYes, widthConfirmationYes, heightConfirmationYes);
    fill(ResetDefaultInk);
  } else if (mouseX>xConfirmationNo && mouseX<xConfirmationNo+widthConfirmationNo && mouseY>yConfirmationNo && mouseY<yConfirmationNo+heightConfirmationNo) {
    hoverOverColor = Red;
    fill(hoverOverColor);
    rect(xConfirmationNo, yConfirmationNo, widthConfirmationNo, heightConfirmationNo);
    fill(ResetDefaultInk);
  }
  //
  fill(DarkGreen);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(GeneralFont, 50); 
  text(Yes, xConfirmationYes, yConfirmationYes, widthConfirmationYes, heightConfirmationYes);
  fill(ResetDefaultInk);
  //
  fill(DarkRed);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(GeneralFont, 50); 
  text(No, xConfirmationNo, yConfirmationNo, widthConfirmationNo, heightConfirmationNo);
  fill(ResetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(GeneralFont, 40); 
  text(Question, xConfirmationQuestion, yConfirmationQuestion, widthConfirmationQuestion, heightConfirmationQuestion);
  fill(ResetDefaultInk);
  //
}

void ExitConfirmation () {
  //
  fill(ResetDefaultInk);
  rect(xConfirmationYes, yConfirmationYes, widthConfirmationYes, heightConfirmationYes);
  rect(xConfirmationNo, yConfirmationNo, widthConfirmationNo, heightConfirmationNo);
  rect(xConfirmationQuestion, yConfirmationQuestion, widthConfirmationQuestion, heightConfirmationQuestion);
  //
  color hoverOverColor=ResetDefaultInk;
  if (mouseX>xConfirmationYes && mouseX<xConfirmationYes+widthConfirmationYes && mouseY>yConfirmationYes && mouseY<yConfirmationYes+heightConfirmationYes) {
    hoverOverColor = color(Green, 128);
    fill(hoverOverColor);
    rect(xConfirmationYes, yConfirmationYes, widthConfirmationYes, heightConfirmationYes);
    fill(ResetDefaultInk);
  } else if (mouseX>xConfirmationNo && mouseX<xConfirmationNo+widthConfirmationNo && mouseY>yConfirmationNo && mouseY<yConfirmationNo+heightConfirmationNo) {
    hoverOverColor = color(Red, 128);
    fill(hoverOverColor);
    rect(xConfirmationNo, yConfirmationNo, widthConfirmationNo, heightConfirmationNo);
    fill(ResetDefaultInk);
  }
  //
  fill(DarkGreen);
  textAlign(CENTER, CENTER); 
  size = 30;
  textFont(GeneralFont, size); 
  text(Yes, xConfirmationYes, yConfirmationYes, widthConfirmationYes, heightConfirmationYes);
  fill(ResetDefaultInk);
  //
  fill(DarkRed);
  textAlign(CENTER, CENTER); 
  size = 30;
  textFont(GeneralFont, size); 
  text(No, xConfirmationNo, yConfirmationNo, widthConfirmationNo, heightConfirmationNo);
  fill(ResetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 30;
  textFont(GeneralFont, size); 
  text(Question, xConfirmationQuestion, yConfirmationQuestion, widthConfirmationQuestion, heightConfirmationQuestion);
  fill(ResetDefaultInk);
  //
}

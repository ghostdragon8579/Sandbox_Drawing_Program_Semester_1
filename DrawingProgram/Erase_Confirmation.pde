void EraseConfirmation () {
    //
  fill(ResetDefaultInk);
  rect(xEraseConfirmationYes, yEraseConfirmationYes, widthEraseConfirmationYes, heightEraseConfirmationYes);
  rect(xEraseConfirmationNo, yEraseConfirmationNo, widthEraseConfirmationNo, heightEraseConfirmationNo);
  rect(xEraseConfirmationQuestion, yEraseConfirmationQuestion, widthEraseConfirmationQuestion, heightEraseConfirmationQuestion);
  //
  color hoverOverColor=ResetDefaultInk;
  if (mouseX>xEraseConfirmationYes && mouseX<xEraseConfirmationYes+widthEraseConfirmationYes && mouseY>yEraseConfirmationYes && mouseY<yEraseConfirmationYes+heightEraseConfirmationYes) {
    hoverOverColor = color(Green, 128);
    fill(hoverOverColor);
    rect(xEraseConfirmationYes, yEraseConfirmationYes, widthEraseConfirmationYes, heightEraseConfirmationYes);
    fill(ResetDefaultInk);
  } else if (mouseX>xEraseConfirmationNo && mouseX<xEraseConfirmationNo+widthEraseConfirmationNo && mouseY>yEraseConfirmationNo && mouseY<yEraseConfirmationNo+heightEraseConfirmationNo) {
    hoverOverColor = color(Red, 128);
    fill(hoverOverColor);
    rect(xEraseConfirmationNo, yEraseConfirmationNo, widthEraseConfirmationNo, heightEraseConfirmationNo);
    fill(ResetDefaultInk);
  }
  //
  fill(DarkGreen);
  textAlign(CENTER, CENTER); 
  size = 30;
  textFont(GeneralFont, size); 
  text(Erase, xEraseConfirmationYes, yEraseConfirmationYes, widthEraseConfirmationYes, heightEraseConfirmationYes);
  fill(ResetDefaultInk);
  //
  fill(DarkRed);
  textAlign(CENTER, CENTER); 
  size = 30;
  textFont(GeneralFont, size); 
  text(No, xEraseConfirmationNo, yEraseConfirmationNo, widthEraseConfirmationNo, heightEraseConfirmationNo);
  fill(ResetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 30;
  textFont(GeneralFont, size); 
  text(EraseQuestion, xEraseConfirmationQuestion, yEraseConfirmationQuestion, widthEraseConfirmationQuestion, heightEraseConfirmationQuestion);
  fill(ResetDefaultInk);
  //
}

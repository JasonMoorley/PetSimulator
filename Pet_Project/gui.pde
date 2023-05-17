/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void button1_click1(GButton source, GEvent event) { //_CODE_:button1:314242:
  Pet1.Feed();
} //_CODE_:button1:314242:

public void button2_click1(GButton source, GEvent event) { //_CODE_:button2:819577:
  Pet1.Treat();
} //_CODE_:button2:819577:

public void button3_click1(GButton source, GEvent event) { //_CODE_:button3:990180:
  if (Pet1.isPlaying){
    button3.setText("Play");
  }
  else{
    button3.setText("Stop Playing");
  }
  Pet1.Play();
} //_CODE_:button3:990180:

public void button4_click1(GButton source, GEvent event) { //_CODE_:button4:573903:
  Pet1.Talk();
} //_CODE_:button4:573903:

public void button5_click1(GButton source, GEvent event) { //_CODE_:button5:661384:
  Pet2.Feed();
} //_CODE_:button5:661384:

public void button6_click1(GButton source, GEvent event) { //_CODE_:button6:986537:
  Pet2.Treat();
} //_CODE_:button6:986537:

public void button7_click1(GButton source, GEvent event) { //_CODE_:button7:298680:
  if (Pet2.isPlaying){
    button7.setText("Play");
  }
  else{
    button7.setText("Stop Playing");
  }
  Pet2.Play();
} //_CODE_:button7:298680:

public void button8_click1(GButton source, GEvent event) { //_CODE_:button8:532317:
  Pet2.Talk();
} //_CODE_:button8:532317:

public void button9_click1(GButton source, GEvent event) { //_CODE_:button9:773446:
  Pet3.Feed();
} //_CODE_:button9:773446:

public void button10_click1(GButton source, GEvent event) { //_CODE_:button10:657414:
  Pet3.Treat();
} //_CODE_:button10:657414:

public void button11_click1(GButton source, GEvent event) { //_CODE_:button11:901145:
  if (Pet3.isPlaying){
    button11.setText("Play");
  }
  else{
    button11.setText("Stop Playing");
  }
  Pet3.Play();
} //_CODE_:button11:901145:

public void button12_click1(GButton source, GEvent event) { //_CODE_:button12:722060:
  Pet3.Talk();
} //_CODE_:button12:722060:

public void button13_click1(GButton source, GEvent event) { //_CODE_:button13:474411:
  Pet4.Feed();
} //_CODE_:button13:474411:

public void button14_click1(GButton source, GEvent event) { //_CODE_:button14:340894:
  Pet4.Treat();
} //_CODE_:button14:340894:

public void button15_click1(GButton source, GEvent event) { //_CODE_:button15:438548:
  if (Pet4.isPlaying){
    button15.setText("Play");
  }
  else{
    button15.setText("Stop Playing");
  }
  Pet4.Play();
} //_CODE_:button15:438548:

public void button16_click1(GButton source, GEvent event) { //_CODE_:button16:723419:
  Pet4.Talk();
} //_CODE_:button16:723419:

public void dropList1_click1(GDropList source, GEvent event) { //_CODE_:dropList1:626845:
  currentPet = dropList1.getSelectedIndex();
  textfield1.setText(Pets[currentPet].name);
  slider1.setLimits(255-red(Pets[currentPet].furColour), 0, 255);
  slider2.setLimits(255-green(Pets[currentPet].furColour), 0, 255);
  slider3.setLimits(255-blue(Pets[currentPet].furColour), 0, 255);
  slider4.setLimits(255-red(Pets[currentPet].collarColour), 0, 255);
  slider5.setLimits(255-green(Pets[currentPet].collarColour), 0, 255);
  slider6.setLimits(255-blue(Pets[currentPet].collarColour), 0, 255);
} //_CODE_:dropList1:626845:

public void textfield1_change1(GTextField source, GEvent event) { //_CODE_:textfield1:910337:
  Pets[currentPet].name = textfield1.getText();
} //_CODE_:textfield1:910337:

public void dropList2_click1(GDropList source, GEvent event) { //_CODE_:dropList2:402835:
  Pets[currentPet].species = dropList2.getSelectedText();
} //_CODE_:dropList2:402835:

public void slider1_change9(GSlider source, GEvent event) { //_CODE_:slider1:762157:
  Pets[currentPet].furColour = color( 255 - slider1.getValueI(), green(Pets[currentPet].furColour), blue(Pets[currentPet].furColour) );
} //_CODE_:slider1:762157:

public void slider2_change1(GSlider source, GEvent event) { //_CODE_:slider2:973711:
  Pets[currentPet].furColour = color( red(Pets[currentPet].furColour), 255 - slider2.getValueI(), blue(Pets[currentPet].furColour) );
} //_CODE_:slider2:973711:

public void slider3_change1(GSlider source, GEvent event) { //_CODE_:slider3:297169:
  Pets[currentPet].furColour = color( red(Pets[currentPet].furColour), green(Pets[currentPet].furColour), 255 - slider3.getValueI() );
} //_CODE_:slider3:297169:

public void slider4_change1(GSlider source, GEvent event) { //_CODE_:slider4:435675:
  Pets[currentPet].collarColour = color( 255 - slider4.getValueI(), green(Pets[currentPet].collarColour), blue(Pets[currentPet].collarColour) );
} //_CODE_:slider4:435675:

public void slider5_change1(GSlider source, GEvent event) { //_CODE_:slider5:923808:
  Pets[currentPet].collarColour = color( red(Pets[currentPet].collarColour), 255 - slider5.getValueI(), blue(Pets[currentPet].collarColour) );
} //_CODE_:slider5:923808:

public void slider6_change1(GSlider source, GEvent event) { //_CODE_:slider6:722198:
  Pets[currentPet].collarColour = color( red(Pets[currentPet].collarColour), green(Pets[currentPet].collarColour), 255 - slider6.getValueI() );
} //_CODE_:slider6:722198:

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:Environmental_Controls:223683:
  appc.background(230);
} //_CODE_:Environmental_Controls:223683:

public void slider1_change1(GSlider source, GEvent event) { //_CODE_:Temperature1:569200:
  temperatures[0] = Temperature1.getValueI();
} //_CODE_:Temperature1:569200:

public void slider1_change2(GSlider source, GEvent event) { //_CODE_:Temperature2:759693:
  temperatures[1] = Temperature2.getValueI();
} //_CODE_:Temperature2:759693:

public void slider1_change3(GSlider source, GEvent event) { //_CODE_:Temperature3:849838:
  temperatures[2] = Temperature3.getValueI();
} //_CODE_:Temperature3:849838:

public void slider1_change4(GSlider source, GEvent event) { //_CODE_:Temperature4:648317:
  temperatures[3] = Temperature4.getValueI();
} //_CODE_:Temperature4:648317:

public void slider1_change5(GSlider source, GEvent event) { //_CODE_:Humidity1:926434:
  println("Humidity1 - GSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:Humidity1:926434:

public void slider1_change6(GSlider source, GEvent event) { //_CODE_:Humidity2:561607:
  println("Humidity2 - GSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:Humidity2:561607:

public void slider1_change7(GSlider source, GEvent event) { //_CODE_:Humidity3:466183:
  println("Humidity3 - GSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:Humidity3:466183:

public void slider1_change8(GSlider source, GEvent event) { //_CODE_:Humidity4:354041:
  println("Humidity4 - GSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:Humidity4:354041:

public void button17_click1(GButton source, GEvent event) { //_CODE_:button17:837630:
  settingsShown = !settingsShown;
  if (settingsShown){
    surface.setSize(900,600);
  }
  else{
    surface.setSize(600,600);
  }
} //_CODE_:button17:837630:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  button1 = new GButton(this, 5, 230, 80, 30);
  button1.setText("Feed");
  button1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  button1.addEventHandler(this, "button1_click1");
  button2 = new GButton(this, 90, 230, 80, 30);
  button2.setText("Treat");
  button2.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  button2.addEventHandler(this, "button2_click1");
  button3 = new GButton(this, 5, 265, 80, 30);
  button3.setText("Play");
  button3.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  button3.addEventHandler(this, "button3_click1");
  button4 = new GButton(this, 90, 265, 80, 30);
  button4.setText("Talk");
  button4.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  button4.addEventHandler(this, "button4_click1");
  button5 = new GButton(this, 305, 231, 80, 30);
  button5.setText("Feed");
  button5.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  button5.addEventHandler(this, "button5_click1");
  button6 = new GButton(this, 390, 229, 80, 30);
  button6.setText("Treat");
  button6.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  button6.addEventHandler(this, "button6_click1");
  button7 = new GButton(this, 305, 265, 80, 30);
  button7.setText("Play");
  button7.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  button7.addEventHandler(this, "button7_click1");
  button8 = new GButton(this, 390, 265, 80, 30);
  button8.setText("Talk");
  button8.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  button8.addEventHandler(this, "button8_click1");
  button9 = new GButton(this, 5, 530, 80, 30);
  button9.setText("Feed");
  button9.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  button9.addEventHandler(this, "button9_click1");
  button10 = new GButton(this, 90, 530, 80, 30);
  button10.setText("Treat");
  button10.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  button10.addEventHandler(this, "button10_click1");
  button11 = new GButton(this, 5, 566, 80, 30);
  button11.setText("Play");
  button11.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  button11.addEventHandler(this, "button11_click1");
  button12 = new GButton(this, 90, 565, 80, 30);
  button12.setText("Talk");
  button12.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  button12.addEventHandler(this, "button12_click1");
  button13 = new GButton(this, 305, 530, 80, 30);
  button13.setText("Feed");
  button13.setLocalColorScheme(GCScheme.RED_SCHEME);
  button13.addEventHandler(this, "button13_click1");
  button14 = new GButton(this, 390, 530, 80, 30);
  button14.setText("Treat");
  button14.setLocalColorScheme(GCScheme.RED_SCHEME);
  button14.addEventHandler(this, "button14_click1");
  button15 = new GButton(this, 305, 565, 80, 30);
  button15.setText("Play");
  button15.setLocalColorScheme(GCScheme.RED_SCHEME);
  button15.addEventHandler(this, "button15_click1");
  button16 = new GButton(this, 390, 565, 80, 30);
  button16.setText("Talk");
  button16.setLocalColorScheme(GCScheme.RED_SCHEME);
  button16.addEventHandler(this, "button16_click1");
  dropList1 = new GDropList(this, 640, 350, 90, 100, 4, 10);
  dropList1.setItems(loadStrings("list_626845"), 0);
  dropList1.addEventHandler(this, "dropList1_click1");
  textfield1 = new GTextField(this, 750, 350, 120, 20, G4P.SCROLLBARS_NONE);
  textfield1.setPromptText("Name");
  textfield1.setOpaque(false);
  textfield1.addEventHandler(this, "textfield1_change1");
  dropList2 = new GDropList(this, 640, 480, 90, 60, 2, 10);
  dropList2.setItems(loadStrings("list_402835"), 0);
  dropList2.addEventHandler(this, "dropList2_click1");
  slider1 = new GSlider(this, 780, 410, 60, 30, 10.0);
  slider1.setRotation(PI/2, GControlMode.CORNER);
  slider1.setLimits(1, 0, 255);
  slider1.setNumberFormat(G4P.INTEGER, 0);
  slider1.setLocalColorScheme(GCScheme.RED_SCHEME);
  slider1.setOpaque(false);
  slider1.addEventHandler(this, "slider1_change9");
  slider2 = new GSlider(this, 825, 410, 60, 30, 10.0);
  slider2.setRotation(PI/2, GControlMode.CORNER);
  slider2.setLimits(1, 0, 255);
  slider2.setNumberFormat(G4P.INTEGER, 0);
  slider2.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  slider2.setOpaque(false);
  slider2.addEventHandler(this, "slider2_change1");
  slider3 = new GSlider(this, 870, 410, 60, 30, 10.0);
  slider3.setRotation(PI/2, GControlMode.CORNER);
  slider3.setLimits(1.0, 0.0, 255.0);
  slider3.setNumberFormat(G4P.DECIMAL, 2);
  slider3.setOpaque(false);
  slider3.addEventHandler(this, "slider3_change1");
  slider4 = new GSlider(this, 780, 510, 60, 30, 10.0);
  slider4.setRotation(PI/2, GControlMode.CORNER);
  slider4.setLimits(1, 0, 255);
  slider4.setNumberFormat(G4P.INTEGER, 0);
  slider4.setLocalColorScheme(GCScheme.RED_SCHEME);
  slider4.setOpaque(false);
  slider4.addEventHandler(this, "slider4_change1");
  slider5 = new GSlider(this, 825, 510, 60, 30, 10.0);
  slider5.setRotation(PI/2, GControlMode.CORNER);
  slider5.setLimits(1, 0, 255);
  slider5.setNumberFormat(G4P.INTEGER, 0);
  slider5.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  slider5.setOpaque(false);
  slider5.addEventHandler(this, "slider5_change1");
  slider6 = new GSlider(this, 870, 510, 60, 30, 10.0);
  slider6.setRotation(PI/2, GControlMode.CORNER);
  slider6.setLimits(1.0, 0.0, 255.0);
  slider6.setNumberFormat(G4P.DECIMAL, 2);
  slider6.setOpaque(false);
  slider6.addEventHandler(this, "slider6_change1");
  label3 = new GLabel(this, 770, 330, 80, 20);
  label3.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label3.setText("Name");
  label3.setOpaque(true);
  label4 = new GLabel(this, 645, 329, 80, 20);
  label4.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label4.setText("Pet");
  label4.setOpaque(true);
  label5 = new GLabel(this, 645, 460, 80, 20);
  label5.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label5.setText("Species");
  label5.setOpaque(true);
  label6 = new GLabel(this, 770, 390, 80, 20);
  label6.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label6.setText("Fur Colour");
  label6.setOpaque(true);
  label7 = new GLabel(this, 770, 490, 80, 20);
  label7.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label7.setText("Collar Colour");
  label7.setOpaque(true);
  Environmental_Controls = GWindow.getWindow(this, "Window title", 0, 0, 240, 300, JAVA2D);
  Environmental_Controls.noLoop();
  Environmental_Controls.setActionOnClose(G4P.KEEP_OPEN);
  Environmental_Controls.addDrawHandler(this, "win_draw1");
  Temperature1 = new GSlider(Environmental_Controls, 10, 50, 100, 40, 10.0);
  Temperature1.setShowValue(true);
  Temperature1.setLimits(20, -50, 50);
  Temperature1.setNumberFormat(G4P.INTEGER, 0);
  Temperature1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  Temperature1.setOpaque(false);
  Temperature1.addEventHandler(this, "slider1_change1");
  label2 = new GLabel(Environmental_Controls, 20, 20, 80, 20);
  label2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label2.setText("Temperature");
  label2.setOpaque(false);
  label1 = new GLabel(Environmental_Controls, 140, 20, 80, 20);
  label1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label1.setText("Humidity");
  label1.setOpaque(false);
  Temperature2 = new GSlider(Environmental_Controls, 10, 100, 100, 40, 10.0);
  Temperature2.setShowValue(true);
  Temperature2.setLimits(20, -50, 50);
  Temperature2.setNumberFormat(G4P.INTEGER, 0);
  Temperature2.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  Temperature2.setOpaque(false);
  Temperature2.addEventHandler(this, "slider1_change2");
  Temperature3 = new GSlider(Environmental_Controls, 10, 150, 100, 40, 10.0);
  Temperature3.setShowValue(true);
  Temperature3.setLimits(20, -50, 50);
  Temperature3.setNumberFormat(G4P.INTEGER, 0);
  Temperature3.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  Temperature3.setOpaque(false);
  Temperature3.addEventHandler(this, "slider1_change3");
  Temperature4 = new GSlider(Environmental_Controls, 10, 200, 100, 40, 10.0);
  Temperature4.setShowValue(true);
  Temperature4.setLimits(20, -50, 50);
  Temperature4.setNumberFormat(G4P.INTEGER, 0);
  Temperature4.setLocalColorScheme(GCScheme.RED_SCHEME);
  Temperature4.setOpaque(false);
  Temperature4.addEventHandler(this, "slider1_change4");
  Humidity1 = new GSlider(Environmental_Controls, 130, 50, 100, 40, 10.0);
  Humidity1.setShowValue(true);
  Humidity1.setLimits(1, 0, 10);
  Humidity1.setNumberFormat(G4P.INTEGER, 0);
  Humidity1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  Humidity1.setOpaque(false);
  Humidity1.addEventHandler(this, "slider1_change5");
  Humidity2 = new GSlider(Environmental_Controls, 130, 100, 100, 40, 10.0);
  Humidity2.setShowValue(true);
  Humidity2.setLimits(1, 0, 10);
  Humidity2.setNumberFormat(G4P.INTEGER, 0);
  Humidity2.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  Humidity2.setOpaque(false);
  Humidity2.addEventHandler(this, "slider1_change6");
  Humidity3 = new GSlider(Environmental_Controls, 130, 150, 100, 40, 10.0);
  Humidity3.setShowValue(true);
  Humidity3.setLimits(1, 0, 10);
  Humidity3.setNumberFormat(G4P.INTEGER, 0);
  Humidity3.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  Humidity3.setOpaque(false);
  Humidity3.addEventHandler(this, "slider1_change7");
  Humidity4 = new GSlider(Environmental_Controls, 130, 200, 100, 40, 10.0);
  Humidity4.setShowValue(true);
  Humidity4.setLimits(1, 0, 10);
  Humidity4.setNumberFormat(G4P.INTEGER, 0);
  Humidity4.setLocalColorScheme(GCScheme.RED_SCHEME);
  Humidity4.setOpaque(false);
  Humidity4.addEventHandler(this, "slider1_change8");
  button17 = new GButton(Environmental_Controls, 80, 260, 80, 30);
  button17.setText("Settings");
  button17.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  button17.addEventHandler(this, "button17_click1");
  Environmental_Controls.loop();
}

// Variable declarations 
// autogenerated do not edit
GButton button1; 
GButton button2; 
GButton button3; 
GButton button4; 
GButton button5; 
GButton button6; 
GButton button7; 
GButton button8; 
GButton button9; 
GButton button10; 
GButton button11; 
GButton button12; 
GButton button13; 
GButton button14; 
GButton button15; 
GButton button16; 
GDropList dropList1; 
GTextField textfield1; 
GDropList dropList2; 
GSlider slider1; 
GSlider slider2; 
GSlider slider3; 
GSlider slider4; 
GSlider slider5; 
GSlider slider6; 
GLabel label3; 
GLabel label4; 
GLabel label5; 
GLabel label6; 
GLabel label7; 
GWindow Environmental_Controls;
GSlider Temperature1; 
GLabel label2; 
GLabel label1; 
GSlider Temperature2; 
GSlider Temperature3; 
GSlider Temperature4; 
GSlider Humidity1; 
GSlider Humidity2; 
GSlider Humidity3; 
GSlider Humidity4; 
GButton button17; 

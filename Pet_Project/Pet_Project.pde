import g4p_controls.*;
boolean settingsShown = false;
int currentPet = 0;

//Pet (String s, String n, String g, color f, color c, int a, int h, int hun, int t, int hum)
Pet[] Pets;

Pet Pet1 = new Pet("dog", "Dooyeon", "Male", color(200,150,0), color(255,0,0), 17, 100, 100);
Pet Pet2 = new Pet("cat", "Jiun", "Male", color(175,125,25), color(0,0,255), 17, 100, 100);
Pet Pet3 = new Pet("cat", "Matthew", "Female", color(100), color(0,200,220), 17, 100, 100);
Pet Pet4 = new Pet("dog", "Olivia", "Female", color(100,65,50), color(200,200,0), 17, 100, 100);

void setup(){
  Pets = new Pet[4];
  Pets[0] = Pet1;
  Pets[1] = Pet2;
  Pets[2] = Pet3;
  Pets[3] = Pet4;
  size(600,600);
  surface.setResizable(true);
  frameRate(10);
  createGUI();
  textfield1.setText(Pets[0].name);
  slider1.setLimits(255-red(Pets[0].furColour), 0, 255);
  slider2.setLimits(255-green(Pets[0].furColour), 0, 255);
  slider3.setLimits(255-blue(Pets[0].furColour), 0, 255);
  slider4.setLimits(255-red(Pets[0].collarColour), 0, 255);
  slider5.setLimits(255-green(Pets[0].collarColour), 0, 255);
  slider6.setLimits(255-blue(Pets[0].collarColour), 0, 255);
}



void draw(){
  background(200);
  fill(30,30,70);
  rect(600,0,900,600);
  
  for (int i = 0; i<4; i++){
    Pets[i].update();
  }
  Pets[0].drawMe(15,-100);
  Pets[1].drawMe(315,-100);
  Pets[2].drawMe(15,200);
  Pets[3].drawMe(315, 200);
  
  Pets[0].drawStats(15,-100);
  Pets[1].drawStats(315,-100);
  Pets[2].drawStats(15,200);
  Pets[3].drawStats(315,200);
  
  Pets[0].drawName(15,-100);
  Pets[1].drawName(315,-100);
  Pets[2].drawName(15,200);
  Pets[3].drawName(315,200);
  
  
  fill(0);
  rect(0,299,600,2);
  rect(299,0,2,600);
  
  //settings
  fill(150,150,200);
  rect(660,10,190,300);
  Pets[currentPet].drawMe(555,-100);
  
  
}

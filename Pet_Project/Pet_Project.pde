//Setup variables, do not change these
import g4p_controls.*;
boolean settingsShown = false;
int currentPet = 0;
int[] temperatures;

//Pet (String s, String n, String g, color f, color c, int a, int h, int hun, int t, int hum)
Pet[] Pets;

//Creates our 4 starting pets
Pet Pet1 = new Pet("dog", "Dooyeon", "Male", color(200,150,0), color(255,0,0), 17, 100, 100, 100, -20,20);
Pet Pet2 = new Pet("cat", "Jiun", "Male", color(175,125,25), color(0,0,255), 17, 100, 100, 100, -20,20);
Pet Pet3 = new Pet("snake", "Grace", "Female", color(50,170,50), color(0,200,100), 17, 100, 100, 100,-20,20);
Pet Pet4 = new Pet("bird", "Olivia", "Female", color(100,65,50), color(200,200,0), 17, 100, 100, 100, -20,20);


void setup(){
  //Setup for each pets temperature
  temperatures = new int[4];
  temperatures[0] = 10;
  temperatures[1] = 10;
  temperatures[2] = 10;
  temperatures[3] = 10;
  
  //Create a list out of our pets which makes it easier to access them
  Pets = new Pet[4];
  Pets[0] = Pet1;
  Pets[1] = Pet2;
  Pets[2] = Pet3;
  Pets[3] = Pet4;
  
  
  size(600,600);
  surface.setResizable(true); //This helps us make our settings menu possible, it makes the window resizable using surface.setSize(x,y);
  frameRate(10);
  
  
  createGUI();
  
  //Workaround for the GUI code being rewritten every time you open the editor.
  textfield1.setText(Pets[0].name);
  slider1.setLimits(255-red(Pets[0].furColour), 0, 255);
  slider2.setLimits(255-green(Pets[0].furColour), 0, 255);
  slider3.setLimits(255-blue(Pets[0].furColour), 0, 255);
  slider4.setLimits(255-red(Pets[0].collarColour), 0, 255);
  slider5.setLimits(255-green(Pets[0].collarColour), 0, 255);
  slider6.setLimits(255-blue(Pets[0].collarColour), 0, 255);
  Temperature1.setLimits(temperatures[0], -50, 50);
  Temperature2.setLimits(temperatures[1], -50, 50);
  Temperature3.setLimits(temperatures[2], -50, 50);
  Temperature4.setLimits(temperatures[3], -50, 50);
}



void draw(){
  background(200);
  
  //draws the individual backgrounds of the pets, with more red if its warmer and more blue if its colder
  for (int i = 0; i < 2; i++){
    for (int j = 0; j < 2; j++){
      fill(1.275*temperatures[2*i + j] + 191.25, 191.25, -1.275*temperatures[2*i + j] + 191.25);
      rect(j*300,i*300,300,300);
    }
  }
  
  //draws the settings menu colour
  fill(30,30,70);
  rect(600,0,900,600);
  
  //updates all 4 pets
  for (int i = 0; i<4; i++){
    Pets[i].update();
  }
  
  //updates the hapiness of all 4 pets, because temperature isnt stored as part of the pet clas, and a pet doesn't know its own index, it can't be written as a method in the pet class
  for (int i = 0; i < 4; i++) {
     if (temperatures[i] < Pets[i].minTemp || temperatures[i] > Pets[i].maxTemp) {
       Pets[i].health -= random (0,0.5);
     }
     else {
       if (Pets[i].health < 100){
         Pets[i].health += random(0,0.5);
       }
       else{
         Pets[i].health = 100;
       }
     }
   }
  
  //Draws the pets in their respective quadrants, the weird coordinates are a product of a different original window size
  Pets[0].drawMe(15,-100);
  Pets[1].drawMe(315,-100);
  Pets[2].drawMe(15,200);
  Pets[3].drawMe(315, 200);
  
  //Draws the stats of the pets
  Pets[0].drawStats(15,-100);
  Pets[1].drawStats(315,-100);
  Pets[2].drawStats(15,200);
  Pets[3].drawStats(315,200);
  
  //Draws the pets name
  Pets[0].drawName(15,-100);
  Pets[1].drawName(315,-100);
  Pets[2].drawName(15,200);
  Pets[3].drawName(315,200);
  
  //Lines in between the quadrants separating the pets
  fill(0);
  rect(0,299,600,2);
  rect(299,0,2,600);
  
  //Settings menu
  fill(150,150,200);
  rect(660,10,190,300);
  Pets[currentPet].drawMe(555,-100);
  
  
}

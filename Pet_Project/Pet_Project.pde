import g4p_controls.*;

//Pet(String s, String n, String g, color f, color c, int a, int h, int hun, int t, int hum)
Pet Pet1 = new Pet("dog", "Dooyeon", "Male", color(200,150,0), color(255,0,0), 17, 100, 100);
Pet Pet2 = new Pet("cat", "Grace", "Male", color(175,125,25), color(0,0,255), 17, 100, 100);
Pet Pet3 = new Pet("cat", "Matthew", "Female", color(100), color(0,200,220), 17, 100, 100);
Pet Pet4 = new Pet("dog", "Olivia", "Female", color(100,65,50), color(200,200,0), 17, 100, 100);

void setup(){
  size(600,600);
  frameRate(10);
  createGUI();
}



void draw(){
  background(200);
  Pet1.drawMe(15,-100);
  Pet2.drawMe(315,-100);
  Pet3.drawMe(15,200);
  Pet4.drawMe(315, 200);
  
  Pet1.update();
  Pet2.update();
  Pet3.update();
  Pet4.update();
  
  Pet1.drawStats(15,-100);
  Pet2.drawStats(315,-100);
  Pet3.drawStats(15,200);
  Pet4.drawStats(315,200);
  fill(0);
  rect(0,299,600,2);
  rect(299,0,2,600);
  
}

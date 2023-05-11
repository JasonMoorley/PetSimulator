//Pet(String s, String n, String g, color f, color c, int a, int h, int hun, int t, int hum)
Pet Pet1 = new Pet("dog", "Dooyeon", "Male", color(200,150,0), color(255,0,0), 17, 100, 100, 100, 0);
Pet Pet2 = new Pet("cat", "Grace", "Male", color(200,100,200), color(255,0,0), 17, 100, 100, 100, 0);

void setup(){
  size(600,600);
}



void draw(){
  background(200);
  Pet1.drawMe(-50,-100);
  Pet2.drawMe(250,-100);
  
  Pet2.drawMe(-50,200);
}

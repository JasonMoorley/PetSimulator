//Pet(String s, String n, String g, color f, color c, int a, int h, int hun, int t, int hum)
Pet Pet1 = new Pet("Dog", "Dooyeon", "Male", color(200,150,0), color(255,0,0), 17, 100, 100, 100, 0);


void setup(){
  size(400,400);
}



void draw(){
  println(Pet1.name);
  Pet1.drawMe(0,0);
  
}

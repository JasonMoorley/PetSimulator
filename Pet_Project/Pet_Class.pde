class Pet{
  String species;
  String name;
  String gender;
  color furColour;
  color collarColour;
  int age;
  int happiness; //between 0 and 100, 100 being happiest
  int hunger; //between 0 and 100, 100 being not hungry at all
  int temperature; //Between 0 and 100, each pet has an ideal temperature
  int humidity;// Between 0 and 100, each pet has an ideal humidity
  boolean alive = true;
  
  Pet(String s, String n, String g, color f, color c, int a, int h, int hun, int t, int hum){
    this.species = s;
    this.name = n;
    this.gender = g;
    this.furColour = f;
    this.collarColour = c;
    this.age = a;
    this.happiness = h;
    this.hunger = hun;
    this.temperature = t;
    this.humidity = hum;
  }
  
  
  void Feed(){
    if (this.hunger == 0) {
      this.alive = false;
    }
    else if (this.hunger < 60){
     this.hunger += 20;
    }
    else if (this.hunger >= 60){
      this.hunger += 10;
    }
  }
  
  void update(){
    if (this.alive == true) {
      this.hunger -= 0.3;
      this.happiness -= 0.3;
    }
    else {
      this.hunger = 0;
      this.humidity = 0;
      this.happiness = 0;
      this.temperature = 0;
    }
  }
  
  void drawMe(float x, float y){ //top left x and y coordinates of the pet drawing
    if (this.species.equals("cat")){
      noStroke();
      
      //body
      fill(furColour);
      rect(x+160,y+200,80,200);
      
      //collar
      fill(collarColour);
      rect(x+160,y+200,80,40); 
      fill(250,250,0);
      circle(x+200,y+240,10); 
      
      //head
      fill(furColour);
      circle(x+200,y+175,125); 
      
      //ears
      triangle(x+115,y+115,x+200,y+150,x+150,y+200);
      triangle(x+285,y+115,x+200,y+150,x+250,y+200);
      
      //eyes
      fill(0);
      circle(x+175,y+175,10);
      circle(x+225,y+175,10);
      
      //name
      text(this.name,x,y+120);
    }
    else if(this.species.equals("dog")){
      noStroke();
      
      //body
      fill(furColour);
      rect(x+160,y+200,80,200);
      
      //collar
      fill(collarColour);
      rect(x+160,y+200,80,40);
      fill(250,250,0);
      circle(x+200,y+240,10);
      
      //head
      fill(furColour);
      circle(x+200,y+175,125);
      
      //ears
      ellipse(x+145,y+170,50,100);
      ellipse(x+255,y+170,50,100);
      
      //eyes
      fill(0);
      circle(x+175,y+175,10);
      circle(x+225,y+175,10);     
      
      //name
      text(this.name,x,y+120);
    }
  }
}

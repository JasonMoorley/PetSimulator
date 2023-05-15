class Pet{
  String species;
  String name;
  String gender;
  color furColour;
  color collarColour;
  int age;
  float happiness; //between 0 and 100, 100 being happiest
  float hunger; //between 0 and 100, 100 being not hungry at all

  boolean alive = true;
  boolean isPlaying = false;
  
  Pet(String s, String n, String g, color f, color c, int a, float h, int hun){
    this.species = s;
    this.name = n;
    this.gender = g;
    this.furColour = f;
    this.collarColour = c;
    this.age = a;
    this.happiness = h;
    this.hunger = hun;

  }
  
  
  void Feed(){
    if (this.hunger < 60){
     this.hunger += 20;
    }
    else if ((this.hunger >= 60)&&(this.hunger <= 90)){
      this.hunger += 10;
    }
    else {
      this.hunger = 100;
    }
  }
  
  void Treat(){
    if (this.hunger <= 95){
      this.hunger += 5;
    }
    else{
      this.hunger = 100;
    }
    if (this.happiness <= 85){
      this.happiness += 15;
    }
    else{
      this.happiness = 100;
    }
  }
  
  void Play(){
    this.isPlaying = !this.isPlaying;
  }
  
  void update(){
    if (this.hunger <= 0) {
      this.alive = false;
    }
    if (this.alive == true) {
      this.hunger -= random(0,1);
      this.happiness -= random(0,1);
    }
    else {
      this.hunger = 0;
      this.happiness = 0;
    }
    if (this.isPlaying == true){
      if (this.happiness <= 98){
        this.happiness += 2;
      }
      else {
        this.happiness = 100;
      }
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
      }
      
      //eyes
      if (this.alive == true) {
        fill(0);
        circle(x+175,y+175,10);
        circle(x+225,y+175,10);
      }
      else {
        stroke(255);
        fill(0);
        line(x+175,y+175,x+185,y+165);
        line(x+185,y+175,x+175,y+165);
        line(x+225,y+175,x+235,y+165);
        line(x+235,y+175,x+225,y+165);
        stroke(0);
      }
           
      
      //name
      text(this.name,x,y+120);
    
  }
  
  void drawStats(float x,float y){
    textSize(10);
    fill(0,0,0);
    text("Hunger", x, y + 160);
    rect(x, y + 170, 104, 14);
    fill( (1-this.hunger/100.0)*255.0, this.hunger/100.0*255.0 ,0);
    rect(x+2,y+172,this.hunger,10);
    
    textSize(10);
    fill(0,0,0);
    text("Happiness", x, y + 200);
    rect(x, y + 210, 104, 14);
    float test = this.happiness/100.0;
    fill( (1-test)*255.0, test*255.0 ,0);
    rect(x+2,y + 212, this.happiness, 10);
  }
}

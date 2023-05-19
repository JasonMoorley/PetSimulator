class Pet{
  String species;
  String name;
  String gender;
  color furColour;
  color collarColour;
  int age;
  float happiness; //between 0 and 100, 100 being happiest
  float hunger; //between 0 and 100, 100 being not hungry at all
  float health;

  boolean alive = true;
  boolean isPlaying = false;
  
  Pet(String s, String n, String g, color f, color c, int a, float h, int hun, int heal){
    this.species = s;
    this.name = n;
    this.gender = g;
    this.furColour = f;
    this.collarColour = c;
    this.age = a;
    this.happiness = h;
    this.hunger = hun;
    this.health = heal;

  }
  
  
  void Feed(){
    if (this.hunger < 60){
     this.hunger += 20;
     this.health += 1;
    }
    else if ((this.hunger >= 60)&&(this.hunger <= 90)){
      this.hunger += 10;
      this.health += 1;
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
  
  void Talk(){
    if (this.happiness <= 85){
       this.happiness += 15 ;
    }
    else{
      this.happiness = 100;
    }
  }
  
  void update(){
    if (this.hunger <= 0 || this.health <= 0) {
      this.alive = false;
    }
    if (this.happiness >= 1){
     this.happiness -= random(0,0.1); 
    }
    else{
     this.happiness = 0; 
    }
    if (this.alive == true) {
      this.hunger -= random(0,0.1);
    }
    else {
      this.hunger = 0;
      this.happiness = 0;
      this.health = 0;
    }
    if (this.isPlaying == true){
      this.health -= 1;
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
      
      else if (this.species.equals("snake")){
        noStroke();
      
        //body
        fill(furColour);
        rect(x+180,y+200,40,60);
        rect(x+120,y+260,100,40);
        rect(x+120,y+260,40,100);
        rect(x+120,y+320,100,40);
        rect(x+180,y+320,40,80);
        
        //collar
        fill(collarColour);
        rect(x+180,y+220,40,20);
        fill(250,250,0);
        circle(x+200,y+240,10);
        
        //head
        fill(furColour);
        circle(x+200,y+175,100);
        
        //tongue
        stroke(120,0,20);
        line(x+185,y+200,x+215,y+200);
        fill(230,0,0);
        rect(x+195,y+200,10,20);
        stroke(0);
        
      }
      
      else if(this.species.equals("bird")){
        noStroke();
        
        //legs
        stroke(220,220,0);
        strokeWeight(3);
        line(x+195,y+220,x+190,y+250);
        line(x+205,y+220,x+210,y+250);
        stroke(0);
        strokeWeight(1);
        
        //wings
        noStroke();
        fill(furColour);
        triangle(x+175,y+170,x+175,y+205,x+165,y+170);
        triangle(x+225,y+170,x+225,y+205,x+235,y+170);
        
        //body
        fill(furColour);
        rect(x+175,y+150,50,70,20,20,20,20);
        
        //beak
        fill(200,130,0);
        triangle(x+190,y+190,x+210,y+190,x+200,y+210);
        
        //collar
        fill(collarColour);
        rect(x+210,y+195,10,10);
        fill(250,250,0);
        circle(x+215,y+208,10);
        
        //perch
        fill(140,100,0);
        rect(x+160,y+250,80,10);
        rect(x+195,y+260,10,140);
        }

      //eyes
      if (this.alive == true) {
        fill(0);
        circle(x+175,y+175,10);
        circle(x+225,y+175,10);
        
        if (this.happiness <= 50) {
          fill(0,0,255);
          for (int i = 2; i < 8; i++) {
            ellipse(x+175, (y+185)+(i*4), i*2, i*2);
          }
        }
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
    
  }
  
  void drawName(float x, float y){
   fill(0);
   textSize(15);
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
    
    textSize(10);
    fill(0,0,0);
    text("Health", x, y + 240);
    rect(x, y + 250, 104, 14);
    fill( (1-this.health/100.0)*255.0, this.health/100.0*255.0 ,0);
    rect(x+2,y + 252, this.health, 10);
  }
}

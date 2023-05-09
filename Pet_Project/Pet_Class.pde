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
    if (this.hunger < 70){
     this.hunger += 20;
    }
  }
}

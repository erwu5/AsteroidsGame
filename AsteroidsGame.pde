//your variable declarations here
Stars[] nightSky;
ArrayList <Asteroid> belt;
//Asteroid[] belt;
Spaceship apollo = new Spaceship();
public void setup() 
{
  //your code here
  nightSky = new Stars[180];
  //belt = new Asteroid[20];
  belt = new ArrayList <Asteroid>();
  size(300,300);
  for(int j = 0; j<20; j++)
  {
    belt.add(new Asteroid());
  }
  for(int i = 0; i< nightSky.length; i++)
  {
    nightSky[i] = new Stars();
  }
}
public void draw() 
{
  //your code here
  background(2, 0, 70);
 
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
   for(int j = 0; j<belt.size(); j++)
  {
    (belt.get(j)).show();
    (belt.get(j)).move();
  }
  
  apollo.show();
  apollo.move();
  
  //remove
  for(int j = 0; j<belt.size(); j++){
    if(dist(apollo.getX(), apollo.getY(), (belt.get(j)).getX(), (belt.get(j).getY()))< 20){
    belt.remove(j);
    }
  }
}
public void keyPressed(){
  if(key == 'l'){apollo.accelerate(.5);}
  if(key == 'k'){apollo.turn((int)(2*PI));} //right
  if(key == 'j'){apollo.turn((int)(-2*PI));} //left
  if(key == 'h'){
    apollo.setDirectionX(0);
    apollo.setDirectionY(0);
    apollo.setX((int)(Math.random()*300));
    apollo.setY((int)(Math.random()*300));
    apollo.setPointDirection((int)(Math.random()*360));
  
}
    
   
}
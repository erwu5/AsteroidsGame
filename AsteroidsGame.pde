//your variable declarations here
Stars[] nightSky;
Spaceship apollo = new Spaceship();
public void setup() 
{
  //your code here
  nightSky = new Stars[180];
  size(300,300);
 
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
  apollo.show();
  apollo.move();
 
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
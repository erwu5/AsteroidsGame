class Stars //note that this class does NOT extend Floater
{
  private int myX, myY;
  //your code here
  Stars()
  {
    myX = (int)(Math.random()*300);
    myY = (int)(Math.random()*300);
  }
  
  public void show()
  {
    //myX = (int)Math.random()*300;
    //myY = (int)Math.random()*300;
    fill(255);
    ellipse(myX, myY, .50, .50);
  }
}
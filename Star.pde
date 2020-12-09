class Star //note that this class does NOT extend Floater
{
  protected int myX;
  protected int myY;
  protected int myColor = 255;
  protected int mySize = 2;
  
  public Star()
  {
    myX = (int)(Math.random()*width);
    myY = (int)(Math.random()*height);
  }
  
  public void show()
  {
    noStroke();
    fill(myColor);
    ellipse(myX,myY,mySize,mySize);
  }
}

class DarkStar extends Star
{
   
   DarkStar()
   {
     myX = (int)(Math.random()*width);
     myY = (int)(Math.random()*height);
     myColor = 175;
   }
   
   public void show()
   {
     noStroke();
     fill(myColor);
     ellipse(myX,myY,mySize,mySize);
   }
}

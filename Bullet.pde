class Bullet extends Floater
{
  private int speed = 6;
  private int size = 4;
  
  public Bullet(Spaceship ship)
  {
    myCenterX = (double)ship.myCenterX;
    myCenterY = (double)ship.myCenterY;
    myXspeed = (double)ship.myXspeed;
    myYspeed = (double)ship.myYspeed;
    myPointDirection = (double)ship.myPointDirection;
    accelerate(speed);
  }
  
  public void show()
  {
    ellipse((float)myCenterX,(float)myCenterY,size,size);
  }
  
  public void move()
  {
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
  }
}

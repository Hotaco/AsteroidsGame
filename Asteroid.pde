class Asteroid extends Floater
{
  protected int rotation;
  private int min;
  private int max;
  private int size;
  private int collision;
  
  public Asteroid()
  {
    rotation = ((int)(Math.random()*5));
    corners = 8; 
    xCorners = new int[corners];   
    yCorners =  new int[corners];
    size = (int)(Math.random()*3);
    determineSize();
    myStroke = color(255);
    myColor = color(0);   
    myCenterX = ((int)(Math.random()*width-100)); 
    myCenterY = ((int)(Math.random()*height-100)); 
    myPointDirection = (int)(Math.random()*360);
  }
  
  public void move()
  {
    super.move(); 
    turn(rotation);
  }
  
  public void asteroidDesign()
  {
      xCorners[0] = (int)(Math.random()*min)-max;
      yCorners[0] = (int)(Math.random()*min)-max;
      xCorners[1] = 0;
      yCorners[1] = (int)(Math.random()*min)-max;
      xCorners[2] = (int)(Math.random()*max)+min;
      yCorners[2] = (int)(Math.random()*min)-max;
      xCorners[3] = (int)(Math.random()*max)+min;
      yCorners[3] = 0;
      xCorners[4] = (int)(Math.random()*max)+min;
      yCorners[4] = (int)(Math.random()*max)+min;
      xCorners[5] = 0;
      yCorners[5] = (int)(Math.random()*max)+min;
      xCorners[6] = (int)(Math.random()*min)-max;
      yCorners[6] = (int)(Math.random()*max)+min;
      xCorners[7] = (int)(Math.random()*min)-max;
      yCorners[7] = 0;
  }
  
  public void largeAsteroid()
  {
      collision = 40;
      min = 17;
      max = 25;
      myXspeed = ((int)(Math.random()*2)-1);
      myYspeed = ((int)(Math.random()*2)-1);
      asteroidDesign();
  }
  
  public void mediumAsteroid()
  {
      min = 12;
      max = 15;
      collision = 30;
      myXspeed = ((int)(Math.random()*4)-2);
      myYspeed = ((int)(Math.random()*4)-2);
      asteroidDesign();
  }
  
  public void smallAsteroid()
  {
      collision = 15;
      min = 5;
      max = 7;
      myXspeed = ((int)(Math.random()*6)-3);
      myYspeed = ((int)(Math.random()*6)-3);
      asteroidDesign();
  }
  
  public void determineSize()
  {
      if(size == 0)
      {
        largeAsteroid();
      }
      else if(size == 1)
      {
        mediumAsteroid();
      }
      else if(size == 2)
      {
        smallAsteroid();
      }
  }
}

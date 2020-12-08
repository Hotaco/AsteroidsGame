class Asteroid extends Floater
{
  protected int rotation;
  private int min = 8;
  private int max = 15;
  public Asteroid()
  {
    rotation = ((int)(Math.random()*5));
    corners = 8;  //the number of corners, a triangular floater has 3   
    xCorners = new int[corners];   
    yCorners =  new int[corners];
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
      
    myColor = color(255);   
    myCenterX = ((int)(Math.random()*400)); 
    myCenterY = ((int)(Math.random()*400)); //holds center coordinates   
    myXspeed = ((int)(Math.random()*4)-2);
    myYspeed = ((int)(Math.random()*4)-2); //holds the speed of travel in the x and y directions   
    myPointDirection = (int)(Math.random()*360);
  }
  
  public void move()
  {
    super.move();
    turn(rotation);
  }
}

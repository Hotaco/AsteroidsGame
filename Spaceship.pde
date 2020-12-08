class Spaceship extends Floater  
{   
  public Spaceship()
  {
    corners = 4;  //the number of corners, a triangular floater has 3   
    xCorners = new int[corners];   
    yCorners =  new int[corners];
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
      xCorners[3] = -2;
      yCorners[3] = 0;
    myColor = color(18, 197, 253);   
    myCenterX = 250; 
    myCenterY = 250; //holds center coordinates   
    myXspeed = 0;
    myYspeed = 0; //holds the speed of travel in the x and y directions   
    myPointDirection = (int)(Math.random()*360); //holds current direction the ship is pointing in degrees  
  }
  
  public void hyperSpace()
  {
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myPointDirection = (int)(Math.random()*360);
    myXspeed = 0;
    myYspeed = 0; 
  }
  
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
    
    //Rockets
    if(keyPressed)
    {
    if(key == 'w')
    {
      fill(255);
      stroke(255);
      line(-8, 8, -16, 8);
      line(-8, -8, -16, -8);
      line(-8, 0, -16, 0);
      //ellipse((float)xCorners[1],(float)yCorners[1],10,10);
    }
    }
    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
}

Spaceship bob = new Spaceship();
Star[] patrick = new Star[500];
public void setup() 
{
  size(500,500);
  for(int i = 0; i < patrick.length; i++)
  {
    patrick[i] = new Star();
  }
  for(int i = 0; i < patrick.length -200; i++)
  {
    patrick[i] = new DarkStar();
  }
}
public void draw() 
{
  background(0);
  
  for(int i = 0; i < patrick.length; i++)
  {
    patrick[i].show();
  }
  for(int i = 0; i < patrick.length-200; i++)
  {
    patrick[i].show();
  }
  
  bob.show();
  bob.move();
  
  //This feels better than the keypressed function
  if(keyPressed)
  {
    if(key == 'w')
    {
      bob.accelerate(0.1);
    }
    if(key == 'a')
    {
      bob.turn(-5);
    }
    if(key == 's')
    {
      bob.accelerate(-0.7);
    }
    if(key == 'd')
    {
      bob.turn(5);
    }
  }
  
}

public void keyPressed()
{
  if(key == 'f')
  {
    bob.hyperSpace();
  }
}

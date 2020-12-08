//Spaceship
Spaceship bob = new Spaceship();
boolean up, down, left, right;
//Stars
Star[] patrick = new Star[500];
//Asteroids
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
int numAsteroids = 20;

public void setup() 
{
  size(500,500);
  //Creating Stars
  for(int i = 0; i < patrick.length; i++)
  {
    patrick[i] = new Star();
  }
  for(int i = 0; i < patrick.length -200; i++)
  {
    patrick[i] = new DarkStar();
  }
  //Creating Asteroids
  for(int i = 0; i < numAsteroids; i++)
  {
    asteroids.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  //Creating Stars
  for(int i = 0; i < patrick.length; i++)
  {
    patrick[i].show();
  }
  for(int i = 0; i < patrick.length-200; i++)
  {
    patrick[i].show();
  }
  //Creating Asteroids
  for(int i = 0; i < asteroids.size(); i++)
  {
    asteroids.get(i).show();
    asteroids.get(i).move();
    
    if(dist((float)asteroids.get(i).myCenterX,(float)asteroids.get(i).myCenterY,(float)bob.myCenterX,(float)bob.myCenterY) < 30)
    {
      asteroids.remove(i);        
    } 
}
  //Showing Spaceship
  bob.show();
  bob.move();
  //Spaceship
  if(keyPressed)
  {
    if(up == true)
    {
      bob.accelerate(0.085);
    }
    if(left == true)
    {
      bob.turn(-5);
    }
    if(down == true)
    {
      bob.accelerate(-0.1);
    }
    if(right == true)
    {
      bob.turn(5);
    }
  }
}

// Controlling the Spaceship
public void keyPressed()
{
  if(key == 'f')
  {
    bob.hyperSpace();
  }
  
  if(key == 'w') up = true;
  if(key == 's') down = true;
  if(key == 'a') left = true;
  if(key == 'd') right = true;
}

public void keyReleased()
{
  if(key == 'w') up = false;
  if(key == 's') down = false;
  if(key == 'a') left = false;
  if(key == 'd') right = false;
}

//Variables

  //Spaceship
  Spaceship bob = new Spaceship();
  boolean up, down, left, right;
  //Stars
  Star[] patrick = new Star[500];
  //Asteroids
  ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
  ArrayList <Bullet> bullet = new ArrayList <Bullet>();
  int numAsteroids = 25;
  
public void setup() 
{
  size(700,700);
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
  //Showing Stars
  for(int i = 0; i < patrick.length; i++)
  {
    patrick[i].show();
  }
  for(int i = 0; i < patrick.length-200; i++)
  {
    patrick[i].show();
  }
  //Showing and moving Asteroids
  //Collision
  for(int i = 0; i < asteroids.size(); i++)
  {
    asteroids.get(i).show();
    asteroids.get(i).move();
    
    //Collision with Ship
    if(dist((float)asteroids.get(i).myCenterX,(float)asteroids.get(i).myCenterY,(float)bob.myCenterX,(float)bob.myCenterY) < asteroids.get(i).collision)
    {
      asteroids.remove(i);        
    }
  }
  for(int i = 0; i < bullet.size(); i++)
  {
    bullet.get(i).show();
    bullet.get(i).move();
  }
  
  //Collision Between asteroid and bullet
  
  for(int i = 0; i < bullet.size(); i++)
  {
    for(int j = 0; j < asteroids.size(); j++)
    {
      if(dist((float)asteroids.get(j).myCenterX,(float)asteroids.get(j).myCenterY,(float)bullet.get(i).myCenterX,(float)bullet.get(i).myCenterY) < 
      asteroids.get(j).collision)
      {
        bullet.remove(i);
        asteroids.remove(j);
        break;
      }
    }    
  }
  
  //Showing and Moving Spaceship
  bob.show();
  bob.move();
  //Spaceship Move
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
      bob.accelerate(-0.085);
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
  
  if(key == ' ')
  {
    bullet.add(new Bullet(bob));
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


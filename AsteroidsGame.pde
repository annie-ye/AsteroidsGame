//your variable declarations here
Spaceship bob = new Spaceship();
Star[] nightSky = new Star[500];
public void setup() 
{
  //your code here
  size(500, 500);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
}
public void keyPressed()
{
  if(key == 'a')
  {
    bob.turn(-5);
  }
  else if (key == 'd')
  {
    bob.turn(5);
  }
  else if(key == 'w') // pushes the ships with rockets in the direction its pointing
  {
    bob.accelerate(0.3);
  }
  if (key == 'h')
  {
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.setCenterX((int)(Math.random()*500));
    bob.setCenterY((int)(Math.random()*500));
    bob.setPointDirection((int)(Math.random()*360));
  }
}

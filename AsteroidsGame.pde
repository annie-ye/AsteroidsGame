Spaceship bob = new Spaceship();
Star[] nightSky = new Star[500];
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
ArrayList <Bullet> joe = new ArrayList <Bullet>();
public void setup() 
{
  //your code here
  size(500, 500);
  for (int j = 0; j < nightSky.length; j++)
  {
    nightSky[j] = new Star();
  }
  for (int i = 0; i < 10; i++)
  {
    rock.add(new Asteroid());
  }
}

public void draw() 
{
  background(0);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
  for (int nI = 0; nI < rock.size(); nI++)
  {
    rock.get(nI).move();
    rock.get(nI).show();
    for (int nJ = 0; nJ < joe.size(); nJ++)
    {
      float d = dist((float)joe.get(nJ).getX(), (float)joe.get(nJ).getY(), (float)rock.get(nI).getX(), (float)rock.get(nI).getY());
      if (d < 10)
      {
        rock.remove(nI);
        joe.remove(nJ);
      }
    }
  }
  bob.show();
  bob.move();
  for (int j = 0; j < joe.size(); j++)
  {
    joe.get(j).show();
    joe.get(j).move();
  }
}
public void keyPressed()
{
  if (key == 'a')
  {
    bob.turn(-5);
  } else if (key == 'd')
  {
    bob.turn(5);
  } else if (key == 'w') // pushes the ships with rockets in the direction its pointing
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
  if (key == 'b')
  {
    joe.add(new Bullet());
  }
}


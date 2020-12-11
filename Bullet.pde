class Bullet extends Floater
{
  public Bullet() {

    myColor = color(213, 66, 11);
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myPointDirection = bob.getPointDirection();
    accelerate(5);
  }
  public void show ()
  {
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public double getX()
  {
    return myCenterX;
  }
  public double getY()
  {
    return myCenterY;
  }
  public void move ()   
  {        
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
  }
}

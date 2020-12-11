class Spaceship extends Floater  
{   
    public Spaceship()
    {
      corners = 4;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
      xCorners[3] = -2;
      yCorners[3] = 0;
      myColor = color(255, 255, 255);
      myCenterX = myCenterY = 350;
      myXspeed = myYspeed = 0;
      myPointDirection = (int)(Math.random() * 360);
    }
    public void setXspeed(double x)
    {
      myXspeed = x;
    }
    public void setYspeed(double y)
    {
      myYspeed = y;
    }
    public void setCenterX(double cX)
    {
      myCenterX = cX;
    }
    public void setCenterY(double cY)
    {
      myCenterY = cY;
    }
    public void setPointDirection(double direction)
    {
      myPointDirection = direction;
    }
    public double getX()
    {
      return myCenterX;
    }
    public double getY()
    {
      return myCenterY;
    }
    public double getPointDirection()
    {
      return myPointDirection;
    }
}

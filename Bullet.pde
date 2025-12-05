class Bullet extends Floater
{
  public Bullet(Spaceship ship){
     myCenterX=ship.getX();
     myCenterY=ship.getY();
     myXspeed=ship.getmyXspeed();
     myYspeed=ship.getmyYspeed();
     myPointDirection= ship.getmyPointDirection();
     accelerate(3.0);
  }
  public void show(){
    fill(255);
    noStroke();
    ellipse((float)myCenterX, (float)myCenterY, 5,5);
  }
  public void setmyCenterX(double x){
    myCenterX=x;
    }
    public double getX(){
      return myCenterX;
    }
    public void setmyCenterY(double x){
    myCenterY=x;
    }
    public double getY(){
      return myCenterY;
    }
}

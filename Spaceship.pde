class Spaceship extends Floater  
{   
    public Spaceship(){
     corners=3;
     xCorners=new int[corners];
     yCorners=new  int[corners];
     xCorners[0]=-8;
     yCorners[0]=-8;
     xCorners[1]=16;
     yCorners[1]=0;
     xCorners[2]=-8;
     yCorners[2]=8;
     myColor=(255);
     myCenterX=200;
     myCenterY=200;
     myXspeed=0;
     myYspeed=0;
     myPointDirection= 0;
    }
    public void setmyXspeed(double x){
    myXspeed=x;
    }
    public double getmyXspeed(){
      return myXspeed;
    }
    public void setmyYspeed(double x){
    myYspeed=x;
    }
    public double getmyYspeed(){
      return myYspeed;
    }
    public void setmyPointDirection(double x){
    myPointDirection=x;
    }
    public double getmyPointDirection(){
      return myPointDirection;
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
    public void turnLeft(){
      myPointDirection= myPointDirection-5;
    }
    public void turnRight(){
      myPointDirection= myPointDirection+5; 
    }

}

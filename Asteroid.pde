public class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid(){
    corners=6;
     xCorners=new int[corners];
     yCorners=new  int[corners];
     xCorners[0]=(int)(Math.random()*4)-12;
     yCorners[0]=(int)(Math.random()*4)-9;
     xCorners[1]=(int)(Math.random()*4)+7;
     yCorners[1]=(int)(Math.random()*4)-9;
     xCorners[2]=(int)(Math.random()*4)+11;
     yCorners[2]=(int)(Math.random()*4)-2;
     xCorners[3]=(int)(Math.random()*4)+4;
     yCorners[3]=(int)(Math.random()*4)+8;
     xCorners[4]=(int)(Math.random()*4)-9;
     yCorners[4]=(int)(Math.random()*4)+6;
     xCorners[5]=(int)(Math.random()*5)-8;
     yCorners[5]=(int)(Math.random()*5)-2;
     myColor=(100);
     myCenterX=Math.random()*401;
     myCenterY=Math.random()*401;
     myXspeed=Math.random()*4-2;
     myYspeed=Math.random()*4-2;
     myPointDirection= Math.random()*360;
     rotSpeed= Math.random()*3-2;
  }
 public void move()
 {
   turn(rotSpeed);
   super.move();
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

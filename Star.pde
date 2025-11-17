//Star []sue=new Star[200];


public class Star //note that this class does NOT extend Floater
{
  private int myColor,myX,myY;
  public Star(){
    myColor=color((int)(Math.random()*250),(int)(Math.random()*250),(int)(Math.random()*250));
    myX=(int)(Math.random()*400);
    myY=(int)(Math.random()*400);
  }

public void show(){
  noStroke();
  fill(myColor);
  ellipse(myX,myY,(int)(Math.random()*3)+1,(int)(Math.random()*3)+1);

  
}

}


//your variable declarations here
Spaceship bob=new Spaceship();
Star []sue=new Star[200];
public void setup()
{
  //your code here
  size(400, 400);
  for (int i=0; i<sue.length; i++) {
    sue[i]=new Star();
  }
}
public void keyPressed() {
  if (key=='1') {
    //hyperspace
    bob.setmyXspeed(0);
    bob.setmyYspeed(0);
    bob.setmyPointDirection(Math.random()*360);
    bob.setmyCenterX(Math.random()*400);
    bob.setmyCenterY(Math.random()*400);
  }
  if (key=='2') {
    //accelerate
    bob.accelerate(1);
  }
  if (key=='3') {
    //rotate left
    bob.turnLeft();
  }
  if (key=='4') {
    //rotate right
    bob.turnRight();
  }
}
public void draw()
{
  background(0);
  for (int i=0; i<sue.length; i++) {
    sue[i].show();
  }
  bob.show();
}

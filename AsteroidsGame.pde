//your variable declarations here
Spaceship bob=new Spaceship();
Star []sue=new Star[200];
ArrayList <Asteroid> may= new ArrayList<Asteroid>();
public void setup()
{
  //your code here
  size(400, 400);
  for (int i=0; i<sue.length; i++) {
    sue[i]=new Star();
  }
  for (int i=0; i<5; i++){
    may.add(i,new Asteroid());
  }
}
public void keyPressed() {
  if (key=='1') {
    bob.setmyXspeed(0);
    bob.setmyYspeed(0);
    bob.setmyPointDirection(Math.random()*360);
    bob.setmyCenterX(Math.random()*400);
    bob.setmyCenterY(Math.random()*400);
  }
  if (key=='2') {
    bob.accelerate(1);
  }
  if (key=='3') {
    bob.turn(-5);
  }
  if (key=='4') {
    bob.turn(5);
  }
}
public void draw()
{
  background(0);
  for (int i=0; i<sue.length; i++) {
    sue[i].show();
  }
  bob.show();
  bob.move();
  for (int i=0; i<may.size(); i++){
    may.get(i).show();
    may.get(i).move();
    float d= dist((float)bob.getX(),(float)bob.getY(),(float)may.get(i).getX(),(float)may.get(i).getY());
    if (d<10)
    may.remove(i);
  }
}


//your variable declarations here
Spaceship bob=new Spaceship();
Star []sue=new Star[200];
ArrayList <Asteroid> may= new ArrayList<Asteroid>();
ArrayList<Bullet> bull= new ArrayList<Bullet>();
public void setup()
{
  size(400, 400);
  for (int i=0; i<sue.length; i++) {
    sue[i]=new Star();
  }
  for (int i=0; i<5; i++){
    may.add(new Asteroid());
  }
}
public void keyPressed() {
  if (key=='1') {
    bob.setmyXspeed(0);
    bob.setmyYspeed(0);
    bob.setmyPointDirection(Math.random()*360);
    bob.setmyCenterX(Math.random()*400);
    bob.setmyCenterY(Math.random()*400);
    //for(int i=may.size(); i<5;i++){
    // may.add(i,new Asteroid()); 
    //}
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
  if (key=='5') {
    bull.add(new Bullet(bob));
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
    if (d<15)
    may.remove(i);
  }
  for(int i=0; i<bull.size();i++){
  bull.get(i).show();
  bull.get(i).move();
  for (int k=0; k<may.size(); k++){
  float e= dist((float)bull.get(i).getX(), (float)bull.get(i).getY(), (float)may.get(k).getX(), (float)may.get(k).getY());
  if(e<8){
    bull.remove(i);
    may.remove(k);
    break;
    }
  }
}
}

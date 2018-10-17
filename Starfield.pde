//your code here

NormalParticle[] C = new NormalParticle[20];
void setup()
{
  size(500, 500);
  for (int i=0; i<C.length; i++) {
    C[i] = new NormalParticle();
  }
}
void draw()
{
  background(0);
  for (int i=0; i<C.length; i++) {
    
    C[i].move();
    C[i].show();
    
  }
  //your code here
}
class NormalParticle implements Particle
{	//your code here
  double y, x, speed, angle;
  float myColor;
  NormalParticle() {
    y = x = height/2;
    speed = Math.random()*20;
    angle = Math.random()*2*Math.PI;
    myColor = (int)Math.random()*255;
  }

public void move()
{
  y += Math.sin(angle)*speed;
  x += Math.cos(angle)*speed ;
}
public void show()
{
  
  fill(myColor,255,255);
  ellipse((float)x, (float)y, 30, 30);
}
}
interface Particle
{
  //your code here
  public void show();
  public void move();
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}

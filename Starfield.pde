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
  double y, x, speed, angle,sphereRadius,orbitX,orbitY;
  float myColor;
  NormalParticle() {
    y = x = width/2;
    //speed = Math.random()*20;
    speed = Math.PI/16;
    angle = Math.random()*2*Math.PI;
    myColor = (int)Math.random()*255;
    sphereRadius = 30;
    double orbitX = 100; 
    double orbitY = 100;
  }

public void move()
{
  //y += Math.sin(angle)*speed;
  //x += Math.cos(angle)*speed ;
   angle += .03;
   x += Math.cos(angle) * speed*15;
   y += Math.sin(angle) * speed*15; 

   
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
class JustAParticle implements Particle 
{
  
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}

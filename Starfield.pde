//your code here
float xx = 5;
double alphaPublic;
Particle[] C = new NormalParticle[50];
Particle[] B = new BoringParticle[10000];
JumboParticle J;
OddballParticle O;
void setup()
{
  frameRate(300);
  background(0);
  size(1000, 1000);
  for (int i=0; i<C.length; i++) {
    C[i] = new NormalParticle();
    B[i] = new BoringParticle();
    for (int ii=0; ii<C.length/2; ii++) {
    C[ii] = new DarkParticle();
    C[0] = new JumboParticle();
    
    
  }
  }
  
 O = new OddballParticle();
}
void draw()
{
  
  fill(255-xx*5,10);
  rect(0,0,width,height);
  xx+=.137;
  
  if (alphaPublic >19){
    xx = 5;
  }
  fill(0);
  ellipse(height/2,width/2,xx,xx);

  //J.move();
  //J.show();
  for (int i=0; i<C.length; i++) {
    
    C[i].move();
    C[i].show();
    ((NormalParticle)C[i]).checkDistance();
    B[i].move();
    B[i].show();
    ((BoringParticle)B[i]).checkDistance();
    ((NormalParticle)C[i]).makeAlphaPublic();
    
  }
  //your code here
  O.move();
  O.show();
}
class NormalParticle implements Particle
{  //your code here
  protected double y, x, speed, angle,sphereRadius,size,alpha;
  protected color c;
  NormalParticle() {
    y = x = width/2;
    //speed = Math.random()*20;
    speed = Math.PI/16;
    angle = Math.random()*2*Math.PI;
    c = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    sphereRadius = 30;
    size = 1;
    alpha = 8;
  }
  //public NormalParticle(){
  //  move();
  //  show();
  //  checkDistance();
  //}
public void checkDistance(){
  
  if (x>width||x<0||y>height||y<0){
    x = width/2;
    y = height/2;
    size = 3;
  }
}
    public void makeAlphaPublic(){
      alphaPublic = alpha;
    }
public void move()
{
  //y += Math.sin(angle)*speed;
  //x += Math.cos(angle)*speed ;
   angle += .03;
   
   if (alpha>20){
     alpha = 9;
   }
   alpha+=.01;
   x += Math.cos(angle) * (speed*alpha);
   y += Math.sin(angle) * (speed*alpha); 
if (dist((float)x,(float)y,(float)width/2,(float)height/2)<3) {
     //angle = Math.random()*2*Math.PI;
     angle +=20;
     size = 10;
     
   }
  
}
public void show()
{
  
  fill(c);
  //fill(255);
  noStroke();
  //if (dist((float)width/2,(float)height/2,(float)x,(float)y)<xx){
  //  noFill();
  //}
  //else {
  //  fill(c);
  //}
  ellipse((float)x, (float)y, (float)size, (float)size);
}
}
interface Particle
{
  //your code here
  public void show();
  public void move();
}
class BoringParticle extends NormalParticle
{
  public void show(){
    speed = Math.PI/6;
    fill(197,197,197);
    ellipse((float)x, (float)y, (float)size, (float)size);
  }
  public void move() {
    x += Math.cos(angle) * speed*10;
    y += Math.sin(angle) * speed*10;
    size +=.2;
  }
  
}
class DarkParticle extends NormalParticle {
  public void move()
{
  //y += Math.sin(angle)*speed;
  //x += Math.cos(angle)*speed ;
   angle += .04;
   alpha+=.01;
   if (alpha>20){
     alpha = 8;
     x = y = width/2;
   }
   x += Math.cos(angle) * (speed*alpha);
   y += Math.sin(angle) * (speed*alpha); 
if (dist((float)x,(float)y,(float)width/2,(float)height/2)<3) {
     //angle = Math.random()*2*Math.PI;
     angle +=20;
     size = 15;
     
   }
  

   
}
  }
  
class OddballParticle implements Particle//uses an interface
{
  //your code here
  int x,y;
  color c;
  public void Oddball(){
    x = width/2;
    y = height/2;
    //c = (int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255);
  }
  public void show(){
    fill((int)(Math.random()*255));
    rect(x,y,100,100);
  }
  public void move(){
    x+=4;
    y+=4;
  }
}
class JumboParticle extends NormalParticle//uses inheritance
{
  //your code here
  public void show(){
  fill(c);
  ellipse((float)x, (float)y, 100, 100);
  }
  
}

//your code here
NormalParticle[] C;
void setup()
{
	size(500,500);
  
}
void draw()
{
	C.move();
  C.show();
  //your code here
}
class NormalParticle
{
	//your code here
double yPos,xPos;
NormalParticle(double x, double y){
  yPos = y;
  xPos = x;
}
void move()
{
yPos +=1;
xPos +=1;
}
void show()
{
ellipse((float)xPos,(float)yPos,30,30);
}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

Walker[] bob;

void setup()
{
  size(500,500);
  bob = new Walker[1000];
  for(int i=0; i < bob.length; i++)
  {
    bob[i] = new Walker();
  }
}
void draw()
{
  background(0);
    for(int i=0; i < bob.length; i++)
  {
  bob[i].show();
  bob[i].walk();
  }
}
class Walker
{
  int myX, myY;
  Walker()
  {
    myX = myY = 250;
    
  }
  void walk()
  {
    myX = myX + (int)(Math.random()*7)-3;
    myY = myY + (int)(Math.random()*7)-3;
  }
  void show()
  {
    fill(#764900);
    ellipse(myX,myY,30,30);
    fill(#3E2600);
    ellipse(myX-10,myY-3,4,4);
    ellipse(myX+10,myY+5,4,4);
    ellipse(myX-3,myY+8,4,4);
    ellipse(myX-1,myY-1,4,4);
    ellipse(myX+5,myY-6,4,4);
    ellipse(myX-4,myY-10,4,4);
    ellipse(myX+2,myY+8,4,4);
  }
}

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
  int myX, myY,c1,c2;
  Walker()
  {
    myX = myY = 300;
    c1 = c2= (int)(Math.random()*257) - 1;
  }
  void walk()
  {
    myX = myX + (int)(Math.random()*7)-3;
    myY = myY + (int)(Math.random()*7)-3;
  }
  void show()
  {
    fill(c1,c2,255);
    ellipse(myX,myY,40,40);
  }
}

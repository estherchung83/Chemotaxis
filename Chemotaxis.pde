
int myX=250;
int myY =250;

Walker[] bob;

void setup()
{
  
  size(500,500);
  bob = new Walker[20];
  for(int i=0; i < bob.length; i++)
  {
    bob[i] = new Walker();
  }
}
void draw()
{
  background(#F0A5EF);
  cookie();
  
    
  for(int i=0; i < bob.length; i++)
  {
  bob[i].show();
  bob[i].walk();
  }
}
void cookie()
{
    noStroke();
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
   

class Walker
{
  int x1, y1,c1,c2,c3;
  Walker()
  {
    x1 = y1 = 50;
    c1 = (int)(Math.random()*200) +50;
    c2 = (int)(Math.random()*200) +50;
    c3 = (int)(Math.random()*200) +50;
    
  }
  void walk()
  {
    x1 = x1 + (int)(Math.random()*7)-3;
    y1 = y1 + (int)(Math.random()*7)-3;
  }
  void show()
  {
    fill(#9D9898);
    noStroke();
    arc(x1-10,y1,50,50,PI,2*PI);
    triangle(x1+15,y1,x1+25,y1,x1+10,y1-15);
    fill(#F28BD0);
    triangle(x1+20,y1,x1+25,y1,x1+20,y1-5);
    stroke(3);
    fill(0);
    ellipse(x1+10,y1-7,5,5);
    stroke(c1,c2,c3);
    line(x1-49,y1 - 2,x1-35,y1-2);
    
    if( x1 < myX)
    {
      x1 = x1 +3;
    }
    else
    {
      x1= x1- 3;
    }
    if( y1 < myY)
    {
      y1 = y1 +3;
    }
    else
    {
      y1 = y1 -3;
    }
    
    if(mouseX > myX)
  {
    myX = myX + 5;
  }
  else
  {
    myX = myX - 5;
  }
  
  if(mouseY > myY)
  {
    myY = myY + 5;
  }
 
  else
  {
    myY = myY - 5;
  }
    if( x1==mouseX && y1==mouseY)
    {
      background(c1,c2,c3);
      c1 =c1 +(int)(Math.random()*50) + 2;
      c2 =c2 +(int)(Math.random()*50) + 2;
      c3 =c3 +(int)(Math.random()*50) + 2;
      background(c1,c2,c3);
      textSize(20);
      fill(0);
      text("The mice ate your cookie!", 100,480);
    }  
     
  }
}

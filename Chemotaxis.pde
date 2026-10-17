class Walker
{
  int myX, myY, myColor;
  Walker()
  {
    myX = 500;
    myY = 500;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
   
  }
  void walk()
  {
    if (mouseX > myX)
      myX = myX + (int)(Math.random()*8)-1;
    else
      myX = myX + (int)(Math.random()*8)-6;
    if (mouseY > myY)
      myY = myY + (int)(Math.random()*8)-1;
    else
      myY = myY + (int)(Math.random()*8)-6;
  }
  void show()
  {
    fill(myColor);
    ellipse(myX, myY, 50, 50);
  }
} 

Walker [] bruno;
void setup()
{
  size(1000, 1000);
  frameRate(10);
  bruno = new Walker[100];
  for (int i = 0; i < bruno.length; i++) {
    bruno[i] = new Walker();
  }
}
void draw()
{
  background(0);
  for (int i = 0; i < bruno.length; i++) {
    bruno[i].walk();
    bruno[i].show();
  }
}

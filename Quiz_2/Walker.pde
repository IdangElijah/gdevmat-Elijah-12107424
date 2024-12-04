class Walker
{
  float x;
  float y;
  float tx = 1, ty = 1;
  float r = 255, g = 255, b = 255;
  float a = 100;
  
  void render()
  {
    int r = int(random(256));
   int g = int(random(256));
   int b = int(random(256));
   int a = int (random(100));
   color random = color (r,g,b,a);
   
    fill(random);
    noStroke();
    circle (x,y,25);
  }
  void randomWalk()
  {
     
  int rng = int(random(1,5));
    if (rng==1)
    {
      y+=5;
    }
    else if (rng ==2)
    {
      y-=5;
    }
      else if (rng ==3)
    {
      x+=5;
    }
      else if (rng ==4)
    {
      x-=5;
    }
  }
}

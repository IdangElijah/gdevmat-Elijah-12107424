class Gaussian
{
  float x;
  float y;
  void render ()
   {
    float gaussian = randomGaussian();
    float standardDeviation = 50;
    float mean = 20;
    float radius = standardDeviation * gaussian + mean;
    int r = int(random(255));
    int g = int(random(255));
    int b = int(random(255));
    int a = int(random(10,100));
    color random = color (r,g,b,a);
    
    fill(random);
    noStroke();
    circle (x,y,radius);
  }
  
  void randomSplatter()
  {
  float gaussian = randomGaussian();
  float standardDeviation = 360;
  float mean = 0;
  
   y = int(random(-360, 360));
   x = standardDeviation * gaussian + mean;
   
   if (frameCount == 300)
  {
    frameCount = 0;
    clear();
    background(255);
  }
  }
}

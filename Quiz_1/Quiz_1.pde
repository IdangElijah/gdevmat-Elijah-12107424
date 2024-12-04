void setup()
{
  size(1280,720,P3D);
  camera(0,0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

void draw()
{
  background(0);
  drawCartesianPlane();
  drawQuadraticFunction();
  drawLinearFunction();
  drawSinFunction();
  drawCircle();
}

void drawCartesianPlane()
{
  strokeWeight(1);
  color white = color (255,255,255);
  fill(white);
  stroke(white);
  line(0, 300, 0, -300);
  line(300, 0, -300, 0);

  for ( int i = -300; i <= 300; i += 10)
  {
    line(i,-2,i,2);
    line(-2,i,2,i);
  }
  
}
void drawQuadraticFunction()
{
    
    color yellow = color (255,255,0);
    fill(yellow);
    noStroke();
    
      for (float x = -300; x<=300; x += 0.1f)
   {
     circle(x, ((float)Math.pow(x, 2) -  (x*15) - 3), 5);
   }
 }
 
void drawLinearFunction()
{
  color purple = color (128,0,128);
  
  for (int x = -300; x<=300; x++)
  {
    fill(purple);
    noStroke();
    circle(x, (-5 * x + 30), 5);

  }
  
}

 float amplitude = 50;
 float frequency = 0.1;

void drawSinFunction()
{
  float wave = sin(radians(frameCount));
  color crimson = color (220, 20, 60);
  
      for (float x = -300; x<=300; x += 0.1f)
      {
     fill(crimson);
     noStroke();
     circle(x + wave*100,(float)(Math.sin(frequency*x) * amplitude) + wave*100, 5);
    }
    
}

void drawCircle()
{
  color blue = color(0, 0, 255);
  fill(blue);
  stroke(blue);
  float radius = 50;
  
   for (int x = 0; x<=360; x++)
   {
      circle((float)Math.cos(x) * radius, (float)Math.sin(x) * radius ,5);
   }
   //for the adjustment of frequency and amplitude
}
void keyPressed() {
  if (key == CODED) 
  {
    if (keyCode == UP)
    {
      amplitude = amplitude + 5;
    } 
    else if (keyCode == DOWN) 
    {
      amplitude = amplitude - 5;
    } 
      else if (keyCode == RIGHT) 
    {
      frequency = frequency + 0.1;
    } 
      else if (keyCode == LEFT) 
    {
      frequency = frequency -0.1;
    } 
 
  }
}

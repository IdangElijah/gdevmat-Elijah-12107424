PVector position = new PVector();
float x;
float y;
float tx = 0, ty = 100;
PVector BH = new PVector(x, y);

Walker[] particle = new Walker[150];
Walker target = new Walker();
void setup()
{
 size(1080,720,P3D);
 camera(0,0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
 
     for (int i = 0; i < particle.length; i++)
  {
   particle[i] = new Walker();
  }
  BH.x = map(noise(tx), 0, 1, -490, 490);
  BH.y = map(noise(ty), 0, 1, -310, 310);

}

void draw()
{
  background(10);
  if (frameCount == 700)
  {
    BH.x = random(-600,600);
    BH.y = random(-300,300);
    background(0);
    frameCount = 0;
    clear();
    setup();
  }
  particles();
  fill(255);
  circle(BH.x, BH.y, 50);
  
}

void particles()
{
    background(10);
    if (frameCount == 350)
    {
  
     
    }
     for (int i = 0; i < particle.length; i++)
     {
      particle[i].renderParticle();
      particle[i].physics();
      
     }
    
}

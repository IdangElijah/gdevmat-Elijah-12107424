class Walker
{
  public float x;
  public float y;
  float tx = 10, ty = 20;
  float tr = 255, tg = 255, tb = 255;
  float tc = 5;
  
  void render ()
   {
    float r = map(noise(tr),0,1, 0, 255);
    float g = map(noise(tg),0,1, 0, 255);
    float b = map(noise(tb),0,1, 0, 255);
    float radius = map(noise(tc),0,1, 5, 150);
    color random = color (r, g, b);
    
    tr += 0.0001f;
    tg += 0.2f;
    tb += 0.03f;
    tc += 0.004f;
    
    fill(random);
    noStroke();
    circle (x,y,radius);
  }
  
  void perlinWalk()
  {
    x = map(noise(tx),0,1, -640, 640);
    y = map(noise(ty),0,1, -360, 360);
    
    tx += 0.01f;
    ty += 0.01f;
    
  }
}

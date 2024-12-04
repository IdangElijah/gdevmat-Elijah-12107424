class Walker
{
  int red = int(random(256));
  int green = int(random(256));
  int blue = int(random(256));
  color random = color (red,green,blue);
  
  float gaussian = randomGaussian();
  float standardDeviation = 800;
  float mean = 0;
  float y = random(-Window.windowHeight / 2, Window.windowHeight / 2 );
  float x = standardDeviation * gaussian + mean + y;
  PVector particle = new PVector(x, y);
  float size = random(10,20);

  void physics()
  {   
  PVector Direction = PVector.sub(BH,particle);
  particle.add(Direction.normalize().mult(3));
  } 
  
 
  void renderParticle()
  {
    noStroke();
    fill(random);
    circle(particle.x, particle.y, size);
  }
  
}

 

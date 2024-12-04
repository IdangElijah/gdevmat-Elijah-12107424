void setup()
{
 camera(0,0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  size(1080,720,P3D);
}

PVector mousePos()
{
  float x = mouseX - Window.windowWidth / 2;
  float y = -(mouseY - Window.windowHeight / 2);
  return new PVector(x, y);
}

void draw()
{
  background(130);
  strokeWeight(15);
  stroke(255,100,100,70);

  PVector mouse = mousePos();
  
  strokeWeight(10);
  stroke(255, 0, 0);

  mouse.normalize().mult(500);
  line(0, 0, mouse.x, mouse.y);
  mouse.normalize().mult(500);
  line(0, 0, -mouse.x, -mouse.y);
  
  strokeWeight(8);
  stroke(255,255,255);

  mouse.normalize().mult(495);
  line(0, 0, mouse.x, mouse.y);
  mouse.normalize().mult(495);
  line(0, 0, -mouse.x, -mouse.y);
 
  strokeWeight(25);
  stroke(10);

  mouse.normalize().mult(100);
  line(0, 0, mouse.x, mouse.y);
  mouse.normalize().mult(100);
  line(0, 0, -mouse.x, -mouse.y);
}

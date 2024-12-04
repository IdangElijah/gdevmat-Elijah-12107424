Liquid ocean = new Liquid(0,-100,Window.right, Window.bottom, 0.1f);
Walker myWalker[] = new Walker[10];

void setup()
{
 size(1280,720,P3D);
 camera(0,0, Window.eyeZ, 0, 0, 0, 0, -1, 0);  
 int posX = 0;
 
   for (int i = 0; i < myWalker.length; i++)
  {
   posX = (Window.windowWidth/10) * (i - 5);
   myWalker[i] = new Walker();
   myWalker[i].position = new PVector (posX, 450);
   myWalker[i].mass = (10-i);
   myWalker[i].scale = myWalker[i].mass * 15;
   
  }
}

void draw()
{
  background(255);
  ocean.render();
  myWalker();
}

void myWalker()
{  
      for (int i = 0; i <myWalker.length; i++)
      {
      float mew = 0.1;
      float normal = 1;
      float frictionMagnitude = mew * normal;
      PVector friction = myWalker[i].velocity.copy();
      friction.normalize();
      friction.mult(-1);
      friction.mult(frictionMagnitude);
      myWalker[i].applyForce(friction);
      
      PVector gravity = new PVector(0,-0.15f * myWalker[i].mass);
      PVector wind = new PVector(0.1f,0);

      myWalker[i].render();
      myWalker[i].update();
      myWalker[i].applyForce(gravity);
      myWalker[i].applyForce(wind);
      
   if (myWalker[i].position.y <= Window.bottom)
  {
    myWalker[i].position.y = Window.bottom;
    myWalker[i].velocity.y *= -1;
  }
  
   if (myWalker[i].position.x >= Window.right)
  {
     myWalker[i].position.x = Window.right;
    myWalker[i].velocity.x *= -1;
  }
  
  if (ocean.isCollingWith(myWalker[i]))
  {
    PVector dragForce = ocean.calculateDragForce(myWalker[i]);
   myWalker[i].applyForce(dragForce);
  }

      }
  
}

  void mouseClicked()
  {
    clear();
    setup();
  }

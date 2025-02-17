int x, y, z, a;

void setup()
{
  size(600,600);
  strokeWeight(5);
}

void draw()
{
  background(200);
  ellipse(300, 300, a, a);
  ellipse(300, y, 200, 200);
  ellipse(x, 300, 200, 200);
  ellipse(x, y, 200, 200);
  
  ellipse(z, 300, z/3, z/3);
  
  ellipse(150, -y+600, 200, 200);
  ellipse(450, y, 200, 200);
  
  
  x++;
  y++;
  a+=2;
  z+=3;
  if (y>700)
    y=-100;
  if (x>700)
    x=-100;
  if (z>700)
    z=-100;
  if(a>875)
    a=0;
}

/*
cities of many countries
 
 Let's play with some countries!
 
 Put the ellipses to the correct counntries each time
 */

float[] x1= new float[20];
float[] y1 = new float[20];
float xvel;
float yvel;

PImage map;

String[] city = {"Seoul", " Washington D.C.", "Ottawa", "Berlin", "Tokyo", "Beijing", "Bangkok", "Hanoi", "Jakarta", "Manila", "Colombo", "Kathmandu", "New Delhi", "Brasília", "Wellington", "Paris", "Lisbon", "Cairo", "Jerusalem", "London" };

void setup()
{
  size(1500, 1000);
  map=loadImage("map.png");
  map.resize(1500, 1000);

  for (int i=0; i<20; i++)
  {
    x1[i]=random(width-50);
    y1[i]=random(height-25);
    xvel=random(3, 7);
    yvel=random(3, 7);
  }
}


void draw()
{

  image(map, 0, 0);
  cities();
}

void cities()
{
  textSize(16);
  for (int i=0; i<20; i++)
  {

    fill(255, 255, 255);
    ellipse(x1[i]-50, y1[i], 200, 50);
    fill(0, 0, 0);
    text(city[i], x1[i]-100, y1[i]+5);
    if (key=='e')
    {
      x1[i]+=xvel;
      y1[i]-=yvel;
    }

    if (key=='z')
    {
      x1[i]-=xvel;
      y1[i]+=yvel;
    }
    if (key=='w')
    {
      x1[i]+=0;
      y1[i]-=yvel;
    }

    if (key=='a')
    {
      x1[i]-=xvel;
      y1[i]-=0;
    }
    if (key=='s')
    {
      x1[i]-=0;
      y1[i]+=yvel;
    }
    if (key=='d')
    {
      x1[i]+=xvel;
      y1[i]-=0;
    }
    if (key=='q')
    {
      x1[i]-=xvel;
      y1[i]-=yvel;
    }
    if (key=='c')
    {
      x1[i]+=xvel;
      y1[i]+=yvel;
    }
  }
}
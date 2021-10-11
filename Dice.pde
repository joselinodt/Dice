void setup()
{
  size(500, 500);
  noLoop();
  textAlign(CENTER);
}
void draw()
{
  background(228, 198, 164);
  int sum = 0;
  for (int y = 1; y <= 6; y++)
  {
    for (int x = 1; x <= 6; x++)
    {
      Die bob = new Die(x*60, y*60);  
      bob.roll();
      bob.show();
      sum+= bob.numDots;
    }
  }
  fill(0);
  textSize(15);
  text("Total: " + sum, 250, 470);

  if (mousePressed && mouseButton == LEFT)
    noLoop();
  else if (keyPressed)
    noLoop();
}

void mousePressed()
{
  loop();
}
void keyPressed()
{
  loop();
}

class Die //models one single dice cube
{
  int myX, myY, numDots;
  boolean oneDot;
  boolean twoDot;
  boolean threeDot;
  boolean fourDot; 
  boolean fiveDot;
  boolean sixDot;

  Die(int x, int y) //constructor
  {
    oneDot = false;
    twoDot = false;
    threeDot = false;
    fourDot = false;
    fiveDot = false;
    sixDot = false;
    myX = x;
    myY = y;
  }
  void roll()
  {
    double prob = (Math.random());
    if (prob < 0.2) {
      oneDot = true;
      numDots=1;
    }
    if (prob < 0.3 && prob > 0.2) {
      twoDot = true;
      numDots=2;
    }
    if (prob < 0.5 && prob > 0.3) {
      threeDot = true;
      numDots=3;
    }
    if (prob < 0.7 && prob > 0.5) {
      fourDot = true;
      numDots=4;
    }
    if (prob < 0.7 && prob > .5) {
      fiveDot = true;
      numDots=5;
    }
    if (prob < 1 && prob > 0.7) {
      sixDot = true;
      numDots=6;
    }
    System.out.println(prob);
  }
  void show()
  {
    fill(255, 243, 214);
    rect(myX+15, myY, 50, 50);
    if (oneDot == true) {
      fill(0);
      ellipse(myX+40, myY+25, 10, 10);
    }
    if (twoDot == true) {
      fill(0);
      ellipse(myX+30, myY+15, 10, 10);
      ellipse(myX+50, myY+35, 10, 10);
    }
    if (threeDot == true) {
      fill(0);
      ellipse(myX+25, myY+10, 10, 10);
      ellipse(myX+40, myY+25, 10, 10);
      ellipse(myX+55, myY+40, 10, 10);
    }
    if (fourDot == true) {
      fill(0);
      //top left
      ellipse(myX+30, myY+15, 10, 10);
      //bottom left
      ellipse(myX+30, myY+35, 10, 10);
      // top right
      ellipse(myX+50, myY+15, 10, 10);
      //bottom right
      ellipse(myX+50, myY+35, 10, 10);
    }
    if (fiveDot == true) {
      fill(0);
      ellipse(myX+30, myY+15, 10, 10);
      ellipse(myX+30, myY+35, 10, 10);
      ellipse(myX+50, myY+15, 10, 10);
      ellipse(myX+50, myY+35, 10, 10);
      ellipse(myX+40, myY+25, 10, 10);
    }
    if (sixDot==true) {
      fill(0);
      //top left
      ellipse(myX+30, myY+10, 10, 10);
      //mid left
      ellipse(myX+30, myY+25, 10, 10);
      //bottom left
      ellipse(myX+30, myY+40, 10, 10);
      // top right
      ellipse(myX+50, myY+10, 10, 10);
      // mid right
      ellipse(myX+50, myY+25, 10, 10);
      //bottom right
      ellipse(myX+50, myY+40, 10, 10);
    }
  }
}

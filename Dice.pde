void setup()
{
	noLoop();
	size(800, 450);
}
void draw()
{
	background((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
	fill(255);
	noStroke();
	rect(620, 20, 150, 300, 10);
	triangle(670, 320, 720, 320, 690, 345);
	fill(0);
	textSize(30);
	text("WOWWEE \nLOOK AT \nALL THEM \nDICES!", 620, 150);

	for (int y = 20; y <= 380; y+=70)
	{
		for (int x = 10; x <= 560; x += 60)
		{
			Die test = new Die(x, y);
			test.show(); 
		}
	}
	
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY;
	int diceRolled;

	Die(int x, int y)  //constructor
	{
		myX = x;
		myY = y;
		roll();
		//variable initializations here
	}
	void roll()
	{
		diceRolled = (int)(Math.random()*6) + 1;

	}
	void show()
	{
		fill(255);
		noStroke();
		rect(myX, myY, 50, 50, 7);
		if (diceRolled == 1) 
		{
			fill(0);
			ellipse(myX + 25, myY + 25, 10, 10);
		}
		else if (diceRolled == 2)
		{
			fill(0);
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 35, myY + 35, 10, 10);
		}
		else if (diceRolled == 3)
		{
			fill(0);
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 25, myY + 25, 10, 10);
			ellipse(myX + 35, myY + 35, 10, 10);			
		}
		else if (diceRolled == 4)
		{
			fill(0);
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 35, myY + 15, 10, 10);
			ellipse(myX + 35, myY + 35, 10, 10);
			ellipse(myX + 15, myY + 35, 10, 10);			
		}
		else if (diceRolled == 5)
		{
			fill(0);
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 35, myY + 15, 10, 10);
			ellipse(myX + 35, myY + 35, 10, 10);
			ellipse(myX + 15, myY + 35, 10, 10);
			ellipse(myX + 25, myY + 25, 10, 10);						
		}
		else 
		{
			fill(0);
			ellipse(myX + 15, myY + 10, 10, 10);
			ellipse(myX + 15, myY + 25, 10, 10);
			ellipse(myX + 35, myY + 10, 10, 10);
			ellipse(myX + 35, myY + 40, 10, 10);
			ellipse(myX + 35, myY + 25, 10, 10);
			ellipse(myX + 15, myY + 40, 10, 10);
		}
	}
}










/* Coin Flip code for reference!!!
void setup()
{
  size(500, 300);
  textAlign(CENTER);
  noLoop();
}
void draw()
{
  //Coin bobby = new Coin(50,150);
  //bobby.show();
  int numHeads = 0;
  for (int x = 50; x < 500; x = x + 60)
  {
    Coin bobby = new Coin(x, 150);
    bobby.show();
    
    if (bobby.heads == true)
    {
      numHeads++;
    } 
  }
  text("There are " + numHeads + " heads up!", 150, 250);
}
class Coin
{
  //three member variables
  boolean heads; 
  int myX, myY;

  //three member functions
  Coin(int x, int y) //constructor = job is to initialize member variables
  {
    myX = x; //no numbers bc we want it to vary
    myY = y;
    flip(); //initalize heads
  }
  void flip() //randomly assign a side to coin (use boolean!)
  {
    if (Math.random() < 0.5)
    {
      heads = true;
    }
    else 
      heads = false;
  }
  void show()
  {
    fill(255);
    ellipse(myX, myY, 50, 50);
    fill(0);
    if (heads == true) 
    {
      text("heads", myX, myY);
    }
    else
    {
      text("tails", myX, myY); 
    }
  }
} 
*/

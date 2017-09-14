void setup()
{
	noLoop();
	size(300, 300);
}
void draw()
{
	background(0);
	Die test = new Die(50, 60); 
	test.show();
	
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
		diceRolled = 5;
		//your code here
	}
	void show()
	{
		fill(255);
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
			ellipse(myX + 35, myX + 45, 10, 10);			
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

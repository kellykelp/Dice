int count = 0; 
void setup()
{
	noLoop();
	size(800, 450);
}
void draw()
{
	background((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
	face();
	
	for (int y = 20; y <= 380; y+=70)
	{
		for (int x = 10; x <= 560; x += 60)
		{
			Die test = new Die(x, y);
			test.show();
			count = count + test.diceRolled;
			
		}
	}
	textSize(20);
	text("You rolled a " +  "\n"  + count + "!!!" , 630, 50);

}
void mousePressed()
{
	redraw();
	count = 0; 
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

void face()
{
	fill(255);
	noStroke();
	rect(620, 20, 150, 300, 10);
	triangle(670, 320, 720, 320, 690, 345);
	fill(0);
	textSize(30);
	text("WOWEE \nLOOK AT \nALL THEM \nDICES!", 625, 150);
	fill(#ebd39b);
	ellipse(690, 440, 150, 150);
	fill(0);
	ellipse(640, 400, 10, 10);
	ellipse(720, 400, 10, 10);
	ellipse(680, 410, 25, 30);
}
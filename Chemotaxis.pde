//declare bacteria variables here  
 Bacteria one; 
 Bacteria two;

int x;
int y;

int walkDir;
 


 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(400,400);
 	
 	int BacteriaColor; 
 	 //x = (int)(Math.random()*300)+100;
 	 //y = (int)(Math.random()*300)+100;
 	 
 	 x = 200;
 	 y = 200;
 	 background(0,0,0);
 	
 }   
 
 void draw()   
 {    
 	//move and show the bacteria  
 	background(0,0,0); 
 	one = new Bacteria();
 	
 	two = new Bacteria();
 	two.move();
 	two.show();

 	one.move();
 	one.show();

 } 

 


 class Bacteria    
 {     
 	//lots of java!
 	int myX, myY;
 	Bacteria()
 	{
 		myX = x;
 		myY = y;
 	}
 	void move()
 	{
 		//x = x + (int)(Math.random()*3)-1;
 		//y = y + (int)(Math.random()*3)-1;	
 		walkDir = (int)(Math.random()*4+1);
 		//System.out.println(walkDir);
 		if (walkDir == 1)
 		{
 			x = x + (int)(Math.random()*2+1);
 		}
 		else if (walkDir == 2)
 		{
 			x = x - (int)(Math.random()*2+1);
 		}
 		else if (walkDir == 3)
 		{
 			y = y + (int)(Math.random()*2+1);
 		}
 		else if (walkDir == 4)
 		{
 			y = y - (int)(Math.random()*2+1);
 		}

 	}
 	void show()
 	{
 		//fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 		ellipse(myX, myY, 25, 25);
 	}

 }  

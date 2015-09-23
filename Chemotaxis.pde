Bacteria [] colony = new Bacteria[5];
int foodX, foodY;
void setup()
{
  size(500,500);
  background(0,0,0);
   foodX = 250;
   foodY= 250;
  for(int i = 0; i < colony.length; i++)
  {
    colony[i] = new Bacteria();
  }
   
  
}

void draw()
{
  background(0,0,0);
  
  for (int i = 0; i<colony.length; i++)
  {
    colony[i].direction();
    colony[i].move();
    colony[i].show(); 
  }
  
}

class Bacteria
{
  int myX, myY;
  //int foodX, foodY;
  int walkDir;
  
  boolean left = false;
  boolean right = false;
  boolean up = false;
  boolean down = false;
  
  int r;
  int g;
  int b;
  
  Bacteria()
  {
     myX = (int)(Math.random()*300)+50;
     myY = (int)(Math.random()*300)+50;
//     foodX = 250;
//     foodY= 250;
   r =  (int)(Math.random()*255);
   g =  (int)(Math.random()*255);
   b =  (int)(Math.random()*255);
  }
  void move()
  {
//    myX = myX + (int)(Math.random()*3)-1;
//    myY = myY + (int)(Math.random()*3)-1; 

    walkDir = (int)(Math.random()*4+1);
    
    if ((walkDir == 1) && (myX < 450))
     {
        if(right == false)
       { 
         myX = myX + (int)(Math.random()*2+1);
       }
       else if(right == true)
       {
         myX = myX + 4;
         right = false;
       }
      
      
       
       
       
     }
     else if ((walkDir == 2) && (myX > 50))
     {
       if(left == false)
       {
         myX = myX - (int)(Math.random()*2+1);
       }
       else if(left == true)
       {
         myX = myX - 4;
         left = false;
       }
       
       
    
       
       
       
       
     }
     else if ((walkDir == 3) && (myY < 450))
     {
      
        if(down == false)
       {
         myY = myY + (int)(Math.random()*2+1);
       }
       else if(down == true)
       {
         myY = myY + 4;
         down = false;
       }
       
       
     
       
      
     }
     else if ((walkDir == 4) && (myY > 50))
     {
   
       
       
         if(up == false)
       {
             myY = myY - (int)(Math.random()*2+1);
       }
       else if(up == true)
       {
         myY = myY - 4;
         up = false;
       }

     }
     
      if((myX == foodX) && (myY == foodY))
     {
       //println("Move DAHH FOOOD");
       foodX = (int)(Math.random()*300)+50;
       foodY = (int)(Math.random()*300)+50;
     }
     
     
     
    
    
  }
   void show()
   {

     stroke(r,g,b);
     strokeWeight(4);
     noFill();
     ellipse(myX, myY, 25, 25);
//     fill(0,0,255);
//     ellipse(foodX,foodY,15,15);
     
//     if((myX == foodX) && (myY == foodY))
//     {
//       println("Move DAHH FOOOD");
//       foodX = (int)(Math.random()*300)+50;
//       foodY = (int)(Math.random()*300)+50;
//     }
     
     noStroke();
     fill(0,0,255);
     ellipse(foodX,foodY,15,15);
     
     
     
   }
  void direction()
  {
    if (foodX < myX)
    {
      left = true;
    }
    else if(foodX > myX)
    {
       right = true;  
    }
    
    if(foodY < myY)
    {
     up = true; 
    }
    else if(foodY > myY)
    {
      down = true;
    }
  
  }

}

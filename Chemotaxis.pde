Bacteria [] colony = new Bacteria[10];
float foodX, foodY;

int w;


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
   

   w = 1;

}

void draw()
{
  background(0,0,0);
  


  for (int i = 0; i<w; i++)
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
     myX = (int)(Math.random()*400)+50;
     myY = (int)(Math.random()*400)+50;
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
    
    if ((walkDir == 1) && (myX < 475))
     {
        if(right == false)
       { 
         myX = myX + (int)(Math.random()*2+1);
       }
       else if(right == true)
       {
         myX = myX + 3;
         right = false;
       }
      
         
     }
     else if ((walkDir == 2) && (myX > 25))
     {
       if(left == false)
       {
         myX = myX - (int)(Math.random()*2+1);
       }
       else if(left == true)
       {
         myX = myX - 3;
         left = false;
       }
       
       
    
       
       
       
       
     }
     else if ((walkDir == 3) && (myY < 475))
     {
      
        if(down == false)
       {
         myY = myY + (int)(Math.random()*2+1);
       }
       else if(down == true)
       {
         myY = myY + 3;
         down = false;
       }
       
       
     
       
      
     }
     else if ((walkDir == 4) && (myY > 25))
     {
   
       
       
         if(up == false)
       {
             myY = myY - (int)(Math.random()*2+1);
       }
       else if(up == true)
       {
         myY = myY - 3;
         up = false;
       }

     }
     
     
     if(dist(myX,myY,foodX,foodY) < 10)
   {
      foodX = (int)(Math.random()*400)+50;
      foodY = (int)(Math.random()*400)+50;
      
    if( w < 10)
    {
         w = w + 1;
     }
   
    }
     
     // if (((myX <= foodX - 10) || (myX >= foodX + 10)) && ((myY <= foodY - 10) || (myY >= foodY + 10)))
     // {
     //   foodX = (int)(Math.random()*400)+50;
     //    foodY = (int)(Math.random()*400)+50;
     // } 
     
     if (mousePressed == true)
     {
       foodX = mouseX;
       foodY = mouseY;
     }
     
     if(keyPressed == true)
     {
       if((key =='w') &&(foodY >= 10))
       {
         foodY = foodY - 1;
       }
       if((key == 'a') && (foodX >= 10))
       {
         foodX = foodX - 1;
       }       
       if((key == 's') && (foodY <= 490))
       {
         foodY = foodY + 1;
       }
       if((key == 'd') && (foodX <= 490))
       {
         foodX = foodX + 1;
       }
       if(key == 'r')
       {
         w = 1;
       }

     }  
       
     
    
    
  }
   void show()
   {

     stroke(r,g,b);
     strokeWeight(4);
     noFill();
     ellipse(myX, myY, 25, 25);


     noStroke();
     fill(0,255,255);
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

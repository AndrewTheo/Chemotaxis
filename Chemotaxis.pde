//declare bacteria variables here  
Bacteria [] colony = new Bacteria[10];



int walkDir;
 

 void setup()   
 {     
   //initialize bacteria variables here   
   size(400,400);
   
   int BacteriaColor; 
    //x = (int)(Math.random()*300)+100;
    //y = (int)(Math.random()*300)+100;
    
  
    background(0,0,0);
    
    for(int i = 0; i < colony.length; i++)
    {
      colony[i] = new Bacteria();
    }
    
   
 }   
 
 void draw()   
 {    
   //move and show the bacteria  
   background(0,0,0); 

  for (int i = 0; i<colony.length; i++)
  {
    colony[i].move();
    colony[i].show(); 
  }
  
 
  

 } 

 


 class Bacteria    
 {     
   //lots of java!
   int myX, myY;
   Bacteria()
   {
     myX = (int)(Math.random()*300)+50;
     myY = (int)(Math.random()*300)+50;
   }
   void move()
   {
     
     //myX = myX + (int)(Math.random()*3)-1;
     //myY = myY + (int)(Math.random()*3)-1;  
     
     
     
     
     walkDir = (int)(Math.random()*4+1);
     
     
     //System.out.println(walkDir);
     if ((walkDir == 1) && (myX < 350))
     {
       //myX = myX + (int)(Math.random()*2+1);
       myX = myX +1;
      
       
       
       
     }
     else if ((walkDir == 2) && (myX > 50))
     {
       //myX = myX - (int)(Math.random()*2+1);
       myX = myX - 1;
       
       
       
     }
     else if ((walkDir == 3) && (myY < 350))
     {
       //myY = myY + (int)(Math.random()*2+1);
       myY = myY + 1;
       
       
     
       
       
       
       
     }
     else if ((walkDir == 4) && (myY > 50))
     {
       //myY = myY - (int)(Math.random()*2+1);
       myY = myY - 1;
       
       
       
       
       
       
       
     }
     else
     {
       myX = myX;
       myY = myY;
     }

   }
   void show()
   {

     stroke(255,0,0);
     noFill();
     ellipse(myX, myY, 25, 25);
   }

 }

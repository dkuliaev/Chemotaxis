

Bacteria [] colony;

 void setup()   
 {     
  
   size(600, 600);

   colony = new Bacteria[200];
   for(int i = 0; i < colony.length; i++) 
   {
      colony[i]= new Bacteria();
   }
   
 }   
 void draw()   
 {   
   background(0, 64, 64);
   for(int j = 0; j < colony.length; j++)
   {
    colony[j].walk();
    colony[j].show();
   }
   
 }  
 class Bacteria    
 {    
   int bacX, bacY, bacColor;
   Bacteria()
   {
     bacX = 300 + (int)(Math.random() * 50 - 25);
     bacY = 300 + (int)(Math.random() * 50 - 25);
     bacColor = (int)(Math.random() * 255);
   }
   
   void walk()
   {
    int bacXinc = (int)(Math.random() * 4 - 2);
    int bacYinc = (int)(Math.random() * 4 - 2);

    if(mouseX < bacX) {
      bacXinc = (int)(Math.random() * 10 - 7);
    }
    else if(mouseX > bacX) {
      bacXinc = (int)(Math.random() * 10 - 3);
    }
    if(mouseY < bacY) {
      bacYinc = (int)(Math.random() * 10 - 7);
    } else if(mouseY > bacY) {
      bacYinc = (int)(Math.random() * 10 - 3);
    }


     bacX += bacXinc;
     bacY += bacYinc;


   }

   void show()
   {
     noStroke();
     fill(0, bacColor, 0, 200);
     ellipse(bacX, bacY, 10, 10);
     fill(200, 0, 0);
     ellipse(mouseX, mouseY, 10, 10);
     

    }
 }    


Bacteria [] colony;

 void setup()   
 {     
   background(200);
   size(300, 300);

   colony = new Bacteria[2000];
   for(int i = 0; i < colony.length; i++) 
   {
      colony[i]= new Bacteria();
   }
   
 }   
 void draw()   
 {   
   background(200);
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
     bacX = 150;
     bacY = 150;
     bacColor = (int)(Math.random() * 255);
   }
   
   void walk()
   {
     bacX += (int)(Math.random() * 4 - 2);
     bacY += (int)(Math.random() * 4 - 2);
   }

   void show()
   {
     noStroke();
     fill(0, bacColor, 0, 200);
     ellipse(bacX, bacY, 1, 1);
   }
 }    
int bacteria;
Bacteria subject;
 void setup()   
 {     
   background(200);
   size(600, 600);  
   Bacteria subject = new Bacteria(300, 300);
 }   
 void draw()   
 {   
   background(200);
   
   subject.walk();
   subject.show();
 }  
 class Bacteria    
 {    
   int bacX, bacY;
   Bacteria(int x, int y)
   {
     bacX = x;
     bacY = y;
   }
   
   void walk()
   {
     bacX += (int)(Math.random() * 3 - 1);
     bacY += (int)(Math.random() *3 - 1);
   }

   void show()
   {
     noStroke();
     fill(255, 0, 0);
     ellipse(bacX, bacY, 50, 50);
   }
 }    
int bacteria;
 void setup()   
 {     
 	size(600, 600);
 	bacteria = new Bacteria();   
 }   
 void draw()   
 {    
 	
 }  
 class Bacteria    
 {    
 	int bacX, bacY;
 	Bacteria()
 	{
 		bacX = 300;
 		bacY = 300;
 	}
 	
 	void walk()
 	{
 		bacX += (int)(Math.random() * 3 - 1);
 		bacY += (int)(Math.random() *3 - 1);
 	}

 	void show()
 	{
 		fill(255, 0, 0);
 		ellipse(bacX, bacY, 50, 50);
 	}
 }    
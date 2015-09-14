import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Chemotaxis extends PApplet {

int bacteria;
 public void setup()   
 {     
 	bacteria = 300;   
 }   
 public void draw()   
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
 	
 	public void walk()
 	{
 		bacX += (int)(Math.random() * 3 - 1);
 		bacY += (int)(Math.random() *3 - 1);
 	}

 	public void show()
 	{
 		fill(255, 0, 0);
 		ellipse(bacX, bacY, 50, 50);
 	}
 }    
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Chemotaxis" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

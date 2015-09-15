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



Bacteria [] colony;

 public void setup()   
 {     
   background(200);
   size(300, 300);

   colony = new Bacteria[20000];
   for(int i = 0; i < colony.length; i++) 
   {
      colony[i]= new Bacteria();
   }
   
 }   
 public void draw()   
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
   
   public void walk()
   {
     bacX += (int)(Math.random() * 4 - 2);
     bacY += (int)(Math.random() * 4 - 2);
   }

   public void show()
   {
     noStroke();
     fill(0, bacColor, 0, 200);
     ellipse(bacX, bacY, 1, 1);
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

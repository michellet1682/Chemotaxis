 //declare bacteria variables here
 Bacteria[] watercolor;
 int x = 150;
 void setup()   
 {     
   //initialize bacteria variables here
   size(300,300);
   background(0);
   watercolor = new Bacteria[15];
   for(int i = 0; i < watercolor.length; i++){
     watercolor[i] = new Bacteria();
   }
 }   
 
 void draw()   
 {    
   //move and show the bacteria
   for(int i = 0; i < watercolor.length; i++){
     watercolor[i].show();
     watercolor[i].walk();
   }
 }  
 
 void mousePressed(){
   redraw();
 }
 
 class Bacteria    
 {     
   //lots of java!
  int myX, myY, myColor;
  Bacteria()
  {
    myX = myY = 150;
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void walk()
  {
    myX = myX + (int)(Math.random()*7)-3;
    myY = myY + (int)(Math.random()*5)-2;
    if(mouseX > x){
      x = x + (int)(Math.random()*5)-1;
    } else {
      x = x + (int)(Math.random()*5)-3;
    }
  }
  void show()
  {
    noStroke();
    fill(myColor);
    ellipse(myX, myY, 1, 1);
  }
 }    

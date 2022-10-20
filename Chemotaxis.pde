Bacteria [] colony;
int n = 10; //number of bacteria
 void setup(){     
   size(400, 400);
   colony = new Bacteria[(int)(Math.random()*50)+50];
   for(int i = 0; i<colony.length; i++){
     colony[i] = new Bacteria();
   }
 }   
 void draw(){    
   background(54, 131, 0);
   fill(129, 183, 91);
   rect(10, 10, 380, 380);
   for(int i = 0; i<colony.length; i++){
     colony[i].show();
     colony[i].walk();
   }
 }  
 class Bacteria{     
   int myX, myY;
   Bacteria(){
     myX = myY = 200;
   }
   void walk(){
     if(myX<20)
       myX = myX + ((int)(Math.random()*3)+1);
     else if(myX>380)
       myX = myX + ((int)(Math.random()*3)-3);
     else
       myX = myX + ((int)(Math.random()*7)-3);

     if(myY < 20)
       myY = myY + ((int)(Math.random()*3)+1);
     else if(myY>380)
       myY = myY + ((int)(Math.random()*3)-3);
     else
       myY = myY + ((int)(Math.random()*7)-3);
   }
   void show(){
     fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
     ellipse(myX, myY, 10, 10);
   }
 }    

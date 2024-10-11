
void setup()
  {
    size(500,500);  
    noLoop();
    rectMode(CENTER);
  }
  void draw()
  {
    int counter=0;
     background(210,180,140); //your code here
    for (int r=-220;r<200;r+=55){
     for(int i=-220;i<500;i+=55) {
     int color1=(int)(Math.random()*255)+1;
     int color2=(int)(Math.random()*255)+1;
     int color3=(int)(Math.random()*255)+1;
     fill(color1,color2,color3);
     Die terrance=new Die(250+i,250+r);
     terrance.show();
     counter+=terrance.numberofdots;     
     }
   }
   textSize(20);
   text("sum: "+counter,230,470);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int myX;
      int myY,numberofdots;
      
Die(int x, int y) //constructor     //only the die function has acess to x and y myX
      {
         myX=x;
         myY=y;
         numberofdots=(int)(Math.random()*6)+1;
      }
      void roll()
      {
          //your code here
      }
      void show()
      {
        
          rect(myX,myY,50,50,15);
          if(numberofdots==1){
             fill(0);
             ellipse(myX,myY,10,10);
          }
          else if(numberofdots==2){
             fill(0);
             ellipse(myX-8,myY-8,10,10);
             ellipse(myX+8,myY+8,10,10);
          }
          else if(numberofdots==3){
             fill(0);
           ellipse(myX+15, myY+15, 10 ,10);
           ellipse(myX,myY,10,10);
           ellipse(myX-15, myY-15, 10,10);
          }
          else if(numberofdots==4){
             fill(0);
           ellipse(myX-10, myY-10, 10 ,10);
           ellipse(myX-10, myY+10, 10,10);
           ellipse(myX+10, myY-10,10,10);
           ellipse(myX+10, myY+10,10,10);
          }
          else if(numberofdots==5){
             fill(0);
           ellipse(myX-13, myY-13, 10 ,10);
           ellipse(myX-13, myY+13, 10,10);
           ellipse(myX, myY, 10,10);
           ellipse(myX+13, myY-13,10,10);
           ellipse(myX+13, myY+13,10,10);
          }
          else if(numberofdots==6){
             fill(0);
           ellipse(myX-10, myY-15, 10 ,10);
           ellipse(myX-10, myY+15, 10,10);
           ellipse(myX+10, myY-15,10,10);
           ellipse(myX-10, myY, 10,10);
           ellipse(myX+10, myY,10,10);
           ellipse(myX+10, myY+15,10,10);
          }
          
          
      }
  }

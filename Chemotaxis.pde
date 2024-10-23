Stock [] snp500;
void setup(){
size(900, 900);
background(120);
snp500 = new Stock[500];
for(int i = 0; i < snp500.length; i++){
snp500[i] = new Stock();
}
frameRate(5);
}

void draw(){
for(int i = 0; i < snp500.length; i++){
 if(mousePressed == false){
snp500[i].move();
 } else{
 snp500[i].moveToMouse();
 }
snp500[i].show();
if (snp500[i].myX > 900){
background(120);
}
}

}


class Stock{
int myX, myY, myX2, myY2;
float r, g;
  Stock(){
  myX = 0;
  myY =(int)(Math.random() * 900);
 /* if (myY > 450){
  r = (int)(Math.random() * 256);
  g = 0;
  } else {
    r = 0;
  g = (int)(Math.random() * 256);
  }*/
  }
  
 
  
  void move(){
  
  myX2 = myX + 25;//myX + (int)(Math.random() * 40);
  myY2 = myY + (int)(Math.random() * 71) - 35;
  
  
  if(myX > 900){
  myX = 0;
  myX2 = myX + 20;
  }
  
  }
  
  void moveToMouse(){
    myX2 = myX + 25;//myX + (int)(Math.random() * 40);
  //myY2 = myY + (int)(Math.random() * 71) - 35;
  myY2=myY;
  
  if(myX > 900){
  myX = 0;
  myX2 = myX + 20;
  }
  
  
    if(mouseY>myY){
      //myY = myY2;//(int)(Math.random() * 900) + 120;
      myY2 = myY + (int)(Math.random() * 41) + 5;
      //System.out.println("down");
    } else {
      //myY = myY2;//(int)(Math.random() * 900) - 120;
      myY2 = myY - (int)(Math.random() * 41) + 5;
    }
  
  
  }
  
  void show(){
  if (myY > 450){
  r = myY/3.8;//(int)(Math.random() * 256);
  g = 0;
  } else {
    r = 0;
  g = 255-(myY/2.2);//(int)(Math.random() * 256);
  }
  //b = (int)(Math.random() * 256);
  stroke(r, g, 0);
  strokeWeight(5);
  line(myX, myY, myX2, myY2);
  myX = myX2;
  myY = myY2;
  }
}

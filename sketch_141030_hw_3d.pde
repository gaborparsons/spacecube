Cube c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28;
Unit u1;
int right, down, to;

void setup(){
  size(2800, 1400, P3D);
  c1 = new Cube(200, width/2-800, height*3/4, 0);
  c2 = new Cube(200, width/2-600, height*3/4, 0);
  c3 = new Cube(200, width/2-400, height*3/4, 0);
  c4 = new Cube(200, width/2-200, height*3/4, 0);
  c5 = new Cube(200, width/2, height*3/4, 0);
  c6 = new Cube(200, width/2+200, height*3/4, 0);
  c7 = new Cube(200, width/2+400, height*3/4, 0);
  c8 = new Cube(200, width/2+600, height*3/4, 0);
  c9 = new Cube(200, width/2-800, height*3/4, -200);
  c10 = new Cube(200, width/2-400, height*3/4, -200);
  c11 = new Cube(200, width/2-200, height*3/4, -200);
  c12 = new Cube(200, width/2, height*3/4, -200);
  c13 = new Cube(200, width/2+200, height*3/4, -200);
  c14 = new Cube(200, width/2+400, height*3/4, -200);
  c15 = new Cube(200, width/2+600, height*3/4, -200);
  c16 = new Cube(200, width/2-800, height*3/4, -400);
  c17 = new Cube(200, width/2-200, height*3/4, -400);
  c18 = new Cube(200, width/2, height*3/4, -400);
  c19 = new Cube(200, width/2+200, height*3/4, -400);
  c20 = new Cube(200, width/2+600, height*3/4, -400);
  c21 = new Cube(200, width/2-800, height*3/4, -600);
  c22 = new Cube(200, width/2-600, height*3/4, -600);
  c23 = new Cube(200, width/2-400, height*3/4, -600);
  c24 = new Cube(200, width/2-200, height*3/4, -600);
  c25 = new Cube(200, width/2, height*3/4, -600);
  c26 = new Cube(200, width/2+200, height*3/4, -600);
  c27 = new Cube(200, width/2+400, height*3/4, -600);
  c28 = new Cube(200, width/2+600, height*3/4, -600);
 // c21 = new Cube(200, width/2-200, height*3/4, -400);
 
  u1 = new Unit(200, width/2-100, 100, 0);
 
  background(0);
  lights();
 
}

void draw(){
  background(0);
       
  lights();
//  camera(30.0, mouseY, 220.0, // eyeX, eyeY, eyeZ
//         0.0, 0.0, 0.0, // centerX, centerY, centerZ
//         0.0, 1.0, 0.0); // upX, upY, upZ
         
         
         //  translate(width/2, height/2);
  c1.draw();
  c2.draw();
  c3.draw();
  c4.draw();
  c5.draw();
  c6.draw();
  c7.draw();
  c8.draw();
  c9.draw();
  //c10.draw();
  c11.draw();
  c12.draw();
  c13.draw();
  c14.draw();
  c15.draw();
  c16.draw();
  c17.draw();
  c18.draw();
  c19.draw();
  c20.draw();
  c21.draw();
  c22.draw();
  c23.draw();  
  c24.draw();
  c25.draw();
  c26.draw();
  c27.draw();
  c28.draw();

  u1.draw();
}

public class Cube{
 int size;
 int xPos;
 int yPos;
 int zPos;
 public Cube(int size, int xPos, int yPos, int zPos){
   this.size = size;
   this.xPos = xPos;
   this.yPos = yPos;
   this.zPos = zPos;

 }

  public void draw(){
    pushMatrix();
    //noFill();
    fill(255);
    noStroke();
     //rotateY(rotation);
    translate(xPos, 0, 0);
    translate(0, yPos, 0);
    translate(0, 0, zPos);
    box(size);
    popMatrix();
    //rotation = (rotation + rotationRate) % (2 * PI);
  }
}
  
  
public class Unit{
 int size;
 int xPos;
 int yPos;
 int zPos;
 public Unit(int size, int xPos, int yPos, int zPos){
   this.size = size;
   this.xPos = xPos;
   this.yPos = yPos;
   this.zPos = zPos;
 }

  public void draw(){
    pushMatrix();
    //rotateY(rotation);
    translate(xPos, 0, 0);
    translate(0, yPos, 0);
    translate(0, 0, zPos);
    box(size);
    popMatrix();
    xPos = xPos + right;
    yPos = yPos + down;
    zPos = zPos + to;
    
    if(xPos >= width || xPos <= 0 ){right = - right;}
    if(yPos >= height || yPos <= 0 ){down = - down;}
    if(down >0){
      if(yPos >= height*2/3 - size && xPos > width/2-800-size && xPos < width/2+800){down = -down;}
    }else{ 
      if(yPos >= height*2/3 + size && xPos > width/2-800-size && xPos < width/2+800){down = -down;}
    }
    //rotation = (rotation + rotationRate) % (2 * PI);
  }
}

void keyPressed(){

   if (key == CODED) {
    if (keyCode == RIGHT) {
      right += 1;
    } else if (keyCode == LEFT) {
      right -= 1;
    } 
  } else {
    right = 0;
  }
  
  if (key == CODED) {
    if (keyCode == UP) {
      down -= 1;
    } else if (keyCode == DOWN) {
      down += 1;
    } 
  } else {
    down = 0;
  }
  if(key == 'a'){
    to += 1;
  }
  if(key == 'z'){
    to -= 1;
  }
}


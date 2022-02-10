float baseH = 10;

float arm1W = 5;
float arm1D = 5;
float arm1L = 40;

float arm2W = 3;
float arm2D = 3;
float arm2L = 20;

float arm3W = 10;
float arm3D = 1.5;
float arm3L = 10;

float armW1 = 10;
float armW2 = 10;
float armW3 = 5;

float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float angle4 = 0;

float l3 = 0;

float dif = 1.0;


void setup(){
  size(1200, 800, P3D);
  //background(255);
  
  camera(100, 100, 100, 0, 0, 0, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  
  background(255);
  
  if(keyPressed){
    if(key == 'a'){
      angle0 = angle0 + dif;
    }
    if(key == 'A'){
      angle0 = angle0 - dif;
    }
    if(key == 'b'){
      angle1 = angle1 + dif;
    }
    if(key == 'B'){
      angle1 = angle1 - dif;
    }
    if(key == 'c'){
      angle2 = angle2 + dif;
    }
    if(key == 'C'){
      angle2 = angle2 - dif;
    }
    if(key == 'd'){
      angle3 = angle3 + dif;
    }
    if(key == 'D'){
      angle3 = angle3 - dif;
    }
    if(key =='e'){
      angle4 = angle4 + dif;
    }
    if(key =='E'){
      angle4 = angle4 - dif;
    }
    if(key == 'R'){
      angle0 = 0;
      angle1 = 0;
      angle2 = 0;
      angle3 = 0;
    }
    
  }
  
  //base
  rotateZ(radians(angle0));
  xyzAxis(20); //xyzAxis @ base
  translate(0,0,baseH/2);
  fill(150);
  box(10,10,baseH);
  
  
  
  
  //1st link
  //go to 1st joint
  translate(0,0,0);
  rotateX(radians(angle1));  
  //go to center of 1st joint
  translate(0,0,arm1L/2);
  fill(175);
  box(arm1W,arm1D,arm1L);
  
  //2nd link
  // go to 2nd joint
  translate(0, 0, arm1L/2);
  rotateX(radians(angle2));
  // go to center of 2nd joint
  translate(0, 0, arm2L/2);
  fill(200);
  box(arm2W,arm2D,arm2L);
  
  //3rd link
  // go to 3rd joint
  translate(0,0,arm1L/10);
  rotateZ(radians(angle3));
  // go to center of 3rd joint
  translate(0,0,arm2L/2);
  fill(150);
  box(arm3W,arm3D,arm3L);
  
  //4th link
  //go to 3rd joint
  translate(5,0,arm1L/24);
  rotateX(radians(angle4));
  //go to center of 4th joint
  translate(0,0,arm2L/2.5);
  fill(100);
  box(1,1,14.5);
  
  //5th link
  // go to 5th joint
  translate(0,0,arm1L/18);
  rotateZ(radians(angle4));
  translate(0,0,arm2L/5);
  fill(250,200,0);
  sphere(1);
  
  //xyzAxis @ Pr
  translate(0, 0, arm2L/2);
  xyzAxis(10);

}

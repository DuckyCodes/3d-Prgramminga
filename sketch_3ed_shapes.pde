float rotx , roty;

void setup(){
 size(800,600,P3D);
 rotx = radians(45);
 roty = radians(45);
 
}

void draw(){
  background(255);
  cube(width/2 , height/2, 0, #FF0000, 200);
  cube(0 , 0, 0, #0000FF, 200);
  spher();
}
void cube(float x, float y, float z, color c,float s){
  pushMatrix();
  translate(x, y,  z);
  noFill();
  rotateX(rotx);
  rotateY(roty);
  //rotateZ();
  
  fill(c);
  stroke(0);
  strokeWeight(3);
  box(s); // H W D
  popMatrix();
}
void spher(){
  translate(width/2,height/2 , 0);
    rotateX(rotx);
  rotateY(roty);
  noFill();
  strokeWeight(3);
  sphere(300);
}


void mouseDragged(){
  
 rotx = rotx + (pmouseY - mouseY)*0.01; 
 roty = roty + (pmouseX - mouseX)*0.01; 
}
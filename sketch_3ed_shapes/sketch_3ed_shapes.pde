
float rotx, roty;
PImage tree;
PImage sCom;
PImage tCom;
void setup() {
  textureMode(NORMAL);
  size(800, 600, P3D);
  rotx = radians(45);
  roty = radians(45);
}

void draw() {
  background(255);
  tree = loadImage("tree.jpg");
  sCom = loadImage("as.jpg");
  tCom = loadImage("images.png");
  cube(width/2, height/2, 0, #0000FF, 1);
  ccube(700,height/2,0,#0000FF,100);
  tree(100,height/2,0,#0000FF,1);
}
void cube(float x, float y, float z, color c, float s) {
  pushMatrix();
  
  translate(x, y, z);
  noFill();
  noStroke();

  scale(100);

  rotateX(rotx);
  rotateY(roty);
  //rotateZ();

  beginShape(QUADS);
  texture(tree);
  //     x,y,z,tx,ty
  //top
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 0, 1, 1, 1);
  vertex(0, 0, 1, 0, 1);
  //bottom
  vertex(0, 1, 0, 0, 0);
  vertex(1, 1, 0, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);
  //front 
  vertex(0, 0, 1, 0, 0);
  vertex(1, 0, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);
  //back
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 1, 0, 1, 1);
  vertex(0, 1, 0, 0, 1);
  //right
  vertex(0, 0, 0, 0, 0);
  vertex(0, 0, 1, 1, 0);
  vertex(0, 1, 1, 1, 1);
  vertex(0, 1, 0, 0, 1);
  //left
  vertex(1, 0, 0, 0, 0);
  vertex(1, 0, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(1, 1, 0, 0, 1);

  endShape();
  box(s); // H W D
  popMatrix();
}
void tree(float x, float y, float z, color c, float s) {
  pushMatrix();
  
  translate(x, y, z);
  noFill();
  noStroke();

  scale(100);

  rotateX(rotx);
  rotateY(roty);
  //rotateZ();

  beginShape(QUADS);
  texture(tree);
  //     x,y,z,tx,ty
  //top
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 0, 1, 1, 1);
  vertex(0, 0, 1, 0, 1);
  //bottom
  vertex(0, 1, 0, 0, 0);
  vertex(1, 1, 0, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);
  endShape();
  beginShape(QUAD);
  texture(tCom);
  //front 
  vertex(0, 0, 1, 0, 0);
  vertex(1, 0, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);
  //back
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 1, 0, 1, 1);
  vertex(0, 1, 0, 0, 1);
  //right
  vertex(0, 0, 0, 0, 0);
  vertex(0, 0, 1, 1, 0);
  vertex(0, 1, 1, 1, 1);
  vertex(0, 1, 0, 0, 1);
  //left
  vertex(1, 0, 0, 0, 0);
  vertex(1, 0, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(1, 1, 0, 0, 1);

  endShape();
  box(s); // H W D
  popMatrix();
}

void ccube(float x, float y, float z, color c, float s) {
  pushMatrix();
   
  translate(x, y, z);
  
  fill(c);
  stroke(0);
  strokeWeight(3);

 

  rotateX(rotx);
  rotateY(roty);
  //rotateZ();
  box(s); // H W D
 
  popMatrix();
}
void spher() {
  translate(width/2, height/2, 0);
  rotateX(rotx);
  rotateY(roty);
  noFill();
  strokeWeight(3);
  sphere(300);
}


void mouseDragged() {

  rotx = rotx + (pmouseY - mouseY)*0.01; 
  roty = roty + (pmouseX - mouseX)*-0.01;
}

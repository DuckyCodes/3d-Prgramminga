
float rotx, roty;
PImage tree;
void setup() {
  textureMode(NORMAL);
  size(800, 600, P3D);
  rotx = radians(45);
  roty = radians(45);
}

void draw() {
  background(255);
  tree = loadImage("tree.jpg");
  cube(width/2, height/2, 0, #0000FF, 1);
}
void cube(float x, float y, float z, color c, float s) {
  pushMatrix();
  
  translate(x, y, z);
  noFill();
  noStroke();

  scale(200);

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

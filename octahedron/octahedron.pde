//正八面体の表示

void setup() {
  size(400, 400, P3D);
}
void draw() {
  background(255);
  translate(width/2, height/2, 0);
  rotateX(radians(mouseY));
  rotateY(radians(mouseX));
  fill(0, 0, 200); 


  //下
  beginShape(TRIANGLES);
  vertex(0, 0, 100);
  vertex(100, 0, 0);
  vertex(0, 100, 0);
  endShape();

  beginShape(TRIANGLES);
  vertex(100, 0, 0);
  vertex(0, 0, -100);
  vertex(0, 100, 0);
  endShape();

  beginShape(TRIANGLES);
  vertex(0, 0, -100);
  vertex(-100, 0, 0);
  vertex(0, 100, 0);
  endShape();

  beginShape(TRIANGLES);
  vertex(-100, 0, 0);
  vertex(0, 0, 100);
  vertex(0, 100, 0);
  endShape();

  //上
  beginShape(TRIANGLES);
  vertex(0, 0, 100);
  vertex(100, 0, 0);
  vertex(0, -100, 0);
  endShape();

  beginShape(TRIANGLES);
  vertex(100, 0, 0);
  vertex(0, 0, -100);
  vertex(0, -100, 0);
  endShape();

  beginShape(TRIANGLES);
  vertex(0, 0, -100);
  vertex(-100, 0, 0);
  vertex(0, -100, 0);
  endShape();

  beginShape(TRIANGLES);
  vertex(-100, 0, 0);
  vertex(0, 0, 100);
  vertex(0, -100, 0);
  endShape();
}
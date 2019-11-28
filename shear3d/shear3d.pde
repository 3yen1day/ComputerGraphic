//六面体の表示と変形

//int ux=0;
int uy=0;
void setup() {
  size(400, 300, P3D);
}
void draw() {
  background(255, 255, 255);
  //ux++;
  uy+=1;
  background(255);
  translate(width/2, height/2, 0);
  //rotateX(radians(ux));
  rotateY(radians(uy));
  ;
  int s=mouseX/40;
  int t=mouseY/40;
  applyMatrix(
    1, 0, 0, 0, 
    0, 1, 0, 0, 
    s, t, 1, 0, 
    0, 0, 0, 1 );
  fill(230, 230, 230);
  box(50);
}
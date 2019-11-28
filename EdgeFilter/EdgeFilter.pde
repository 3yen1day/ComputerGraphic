//エッジフィルター

PImage imgIn, imgOut;

float [][] Fx = { { -1, 0, 1 }, 
  { -2, 0, 2 }, 
  { -1, 0, 1 } };
float [][] Fx2 = { { 1, 2, 1 }, 
  { 0, 0, 0 }, 
  { -1, -2, -1 } };

void settings() {
  imgIn = loadImage("01.jpg");
  imgOut = new PImage( imgIn.width, imgIn.height );
  size( imgIn.width, imgIn.height );
}
void setup() {
}
void draw() {
  background(255);
  //image( imgIn, 0, 0 );
  posterise(imgIn, imgOut);
  image( imgOut, 0, 0 );
  saveFrame("out.jpg");
}

void posterise(PImage src, PImage dst) {


  for (int y=1; y<src.height-1; y++) {
    for (int x=1; x<src.width-1; x++) {
      float r1=0;
      float g1=0;
      float b1=0;  
      float r2=0;
      float g2=0;
      float b2=0; 
      float r3=0;
      float g3=0;
      float b3=0;
      for (int i=-1; i<2; i++) {
        for (int j=-1; j<2; j++) {
          int posx = x+j;
          int posy = y+i;
          color c = src.get(posx, posy);
          float r=red(c);
          float g=green(c);
          float b=blue(c);
          r1+=r*Fx[j+1][i+1];//行列の左上から順に足していく
          g1+=g*Fx[j+1][i+1];
          b1+=b*Fx[j+1][i+1];
          r2+=r*Fx2[j+1][i+1];//行列の左上から順に足していく
          g2+=g*Fx2[j+1][i+1];
          b2+=b*Fx2[j+1][i+1];
          r3=sqrt(sq(r1)+sq(r2));
          g3=sqrt(sq(g1)+sq(g2));
          b3=sqrt(sq(b1)+sq(b2));
        }
      }
      dst.set(x, y, color(r3, g3, b3));
    }
  }
}
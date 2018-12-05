int n = 10;
int size;

void setup () {
  size (600, 600);
  size = width / n;
}

void draw () {
  background (255);
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j ++) {
      drawCell(i, j);
    }
  }
  
  noLoop();
}

void drawCell (int i, int j) {
  //Cual azulejo pintas 

  /*if (random(1.0) < 0.5) {
    tileA(i, j);
  } else {
    tileC (i, j);
  }*/
  tileC (i, j);
}

void tileA (int i, int j) {
  float x0= i * size;
  float y0= j * size;
  float x1= i * size;
  float y1= (j * size) + size;
  float x2= (i * size) + size / 2;
  float y2= (j * size) + size / 2;

  fill (#C6003C);
  noStroke();
  triangle(x0, y0, x1, y1, x2, y2);
}


void tileB (int i, int j) {
  float x3= (i * size);
  float y3= (j * size) + size / 2;
  float x4= (i * size) + size / 2;
  float y4= j * size;
  float x5= (i * size) + size / 2;
  float y5= (j * size) + size / 2;

  float x6= (i * size);
  float y6= (j * size) + size / 2;
  float x7= i * size;
  float y7= (j * size) + size;
  float x8= (i * size) + size / 2;
  float y8= (j * size) + size / 2;

  float x9= (i * size) + size / 2;
  float y9= (j * size);
  float x10= (i * size) + size / 2;
  float y10= (j * size) + size / 2;
  float x11= (i * size) + size;
  float y11= (j * size);


  fill (#9B002E);
  noStroke();
  triangle(x3, y3, x4, y4, x5, y5);
  fill(#F585A7);
  triangle(x6, y6, x7, y7, x8, y8);
  fill(#FFBFD2);
  triangle(x9, y9, x10, y10, x11, y11);
}

void tileC (int i, int j) {
  float x12= i * size;
  float y12= (j * size) + size / 2;
  float x13= (i * size) + size / 2;
  float y13= j * size;
  float x14= i * size;
  float y14= (j * size) + size / 2;


  fill (#FFC379);
  noStroke();
  triangle(x12, y12, x13, y13, x14, y14);


}

void mouseClicked () {
  redraw();
}
matriz azul1;
matriz azul2;

void setup(){
size(600,300);
 azul1= new matriz(3,200,100,50,0,0);
 azul2= new matriz(3,200,300,50,0,0);
 
}


void draw(){
background(0,40,50);
 azul1.display();
 azul1.mouse();
 azul2.display();
 azul2.mouse();
}

class matriz {

 int tcuadrito;
 int tmatriz;
 int x;
 int y;
 int i;
 int j;
  
matriz(int tcuadrito_, int tmatriz_, int x_, int y_, int i_, int j_){
 tcuadrito = tcuadrito_;
  tmatriz = tmatriz_;
    x = x_;
    y = y_;
    i = i_;
    j = j_;
}

void display(){
  for (i = 0; i<tmatriz; i+=tcuadrito){
      for (j = 0; j<tmatriz; j+=tcuadrito){
      stroke(0,40,50);
      fill (0,random(0,255),random(100,255));
      rect (x+i,y+j,tcuadrito,tcuadrito);
    }
  } 
}

void mouse(){
  if ((mouseX >= x & mouseX <= x+tmatriz) & (mouseY >= y & mouseY <= y+tmatriz)) {
     tcuadrito= 20;
    }
  else {
     tcuadrito= 3;
    }
  }
}
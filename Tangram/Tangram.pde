float l= 300;  //equivalencias entre las figuras
float l2=l/2;
float l4=l/4;
float l8= l/8;
float h1 = ((sqrt(2)*l)/2);
float h2 = ((sqrt(2)*l)/4);
float radius = 25;
//coordenada del centro de los circulos
float cx1 = 200;
float cy1 = 300-l4;

float cx2 =200-l4;
float cy2= 300;

float cx3=(200+(3*l8));
float cy3= 300+l4;

float cx4 =(200+(3*l8));
float cy4 = 300-l4;

float cx5 =200;
float cy5 = 300+l8;

float cxp=200 - l8;
float cyp=300+ (3*l8);

float cxc=200+l4;
float cyc=300;
//angulos iniciales
float ang1=0;
float ang2=0;
float ang3=0;
float ang4=0;
float ang5=0;
float angp=0;
float angc=0;

color negro = color(54,54,54);
color nivel= color(245,206,197);

PShape pez;

void setup() {
  size(1200,600);
}
void draw() {
  background(negro);
  strokeWeight(2);
  
   
  push();
  pez();
  shape(pez);
  pop();
  
  fichas();
 
}






void fichas(){
  


  //------BLOQUE TRIANGULO VERDE (1)----------//
  if(encima(mouseX,mouseY, cx1, cy1, radius)){
    fill(255,150,0);
  }
  else fill(93, 241, 42 );
  triangulo1(cx1,cy1,ang1);

 //comprubea que el mouse esta encima y hay click izq
 if(seleccion(cx1,cy1)){
        cx1=mouseX;
        cy1=mouseY;
 }
 //comprueba que le mouse este encima y se presiona espacio
 if (tespacio(cx1,cy1)){
     ang1=ang1 +45;
     delay(100);
  }

  //------BLOQUE TRIANGULO ROJO (2)----------//
  if(encima(mouseX,mouseY, cx2, cy2, radius)){
    fill(255,150,0);
  }
  else fill(255, 8, 0 );
  triangulo2(cx2,cy2,ang2);

 //comprubea que el mouse esta encima y hay click izq
 if(seleccion(cx2,cy2)){
        cx2=mouseX;
        cy2=mouseY;
 }
 //comprueba que le mouse este encima y se presiona espacio
 if (tespacio(cx2,cy2)){
     ang2 +=45;
     delay(100);
  }

  //------BLOQUE TRIANGULO MORADO (3)----------//
  if(encima(mouseX,mouseY, cx3, cy3, radius)){
    fill(255,150,0);
  }
  else fill(152, 50, 138 );
  triangulo3(cx3,cy3,ang3);

 //comprubea que el mouse esta encima y hay click izq
 if(seleccion(cx3,cy3)){
        cx3=mouseX;
        cy3=mouseY;
 }
 //comprueba que le mouse este encima y se presiona espacio
 if (tespacio(cx3,cy3)){
     ang3 +=45;
     delay(100);
  }

  //------BLOQUE TRIANGULO AZUL (4)----------//
  if(encima(mouseX,mouseY, cx4, cy4, radius)){
    fill(255,150,0);
  }
  else fill(50, 103, 152);
  triangulo4(cx4,cy4,ang4);

 //comprubea que el mouse esta encima y hay click izq
 if(seleccion(cx4,cy4)){
        cx4=mouseX;
        cy4=mouseY;
 }
 //comprueba que le mouse este encima y se presiona espacio
 if (tespacio(cx4,cy4)){
     ang4 +=45;
     delay(100);
  }

 //------BLOQUE TRIANGULO AMARILLO (5)----------//
  if(encima(mouseX,mouseY, cx5, cy5, radius)){
    fill(255,150,0);
  }
  else fill(238, 241, 42);
  triangulo5(cx5,cy5,ang5);

 //comprubea que el mouse esta encima y hay click izq
 if(seleccion(cx5,cy5)){
        cx5=mouseX;
        cy5=mouseY;
 }
 //comprueba que le mouse este encima y se presiona espacio
 if (tespacio(cx5,cy5)){
     ang5 +=45;
     delay(100);
  }

 //------BLOQUE PARALELOGRAMO GRIS (6)----------//
  if(encima(mouseX,mouseY, cxp, cyp, radius)){
    fill(255,150,0);
  }
  else fill(113, 125, 126);
  paralelogramo(cxp,cyp,angp);

 //comprubea que el mouse esta encima y hay click izq
 if(seleccion(cxp,cyp)){
        cxp=mouseX;
        cyp=mouseY;
 }
 //comprueba que le mouse este encima y se presiona espacio
 if (tespacio(cxp,cyp)){
     angp +=45;
     delay(100);
  }


 //------BLOQUE CUADRADO CAFE (7)----------//
  if(encima(mouseX,mouseY, cxc, cyc, radius)){
    fill(255,150,0);
  }
  else fill(110, 44, 0);
  cuadrado(cxc,cyc,angc);

 //comprubea que el mouse esta encima y hay click izq
 if(seleccion(cxc,cyc)){
        cxc=mouseX;
        cyc=mouseY;
 }
 //comprueba que le mouse este encima y se presiona espacio
 if (tespacio(cxc,cyc)){
     angc +=45;
     delay(100);
  }
}




//TRIANGULO VERDE
void triangulo1(float cx,float cy, float angulo){
  push();
  noStroke();
  translate(cx,cy);
  rotate(radians(angulo));
  cx=0;cy=0;
  triangle(cx+l2,cy-l4,cx,cy+l4,cx-l2,cy-l4);
  stroke(0);
  ellipse(cx, cy, radius,radius);
  pop();
}

//TRIANGULO ROJO
void triangulo2(float cx,float cy, float angulo){
  push();
  noStroke();
  translate(cx,cy);
  rotate(radians(angulo));
  cx=0;cy=0;
  triangle(cx+l4,cy,cx-l4,cy-l2,cx-l4,cy+l2);
  stroke(0);
  ellipse(cx, cy, radius,radius);
  pop();
}

//TRIANGULO MORADO
void triangulo3(float cx,float cy, float angulo){
  push();
  noStroke();
  translate(cx,cy);
  rotate(radians(angulo));
  cx=0;cy=0;
  triangle(cx+l8,cy-l4,cx+l8,cy+l4,cx-(3*l8),cy+l4);
  stroke(0);
  ellipse(cx, cy, radius,radius);
  pop();
}

//TRIANGULO AZUL
void triangulo4(float cx,float cy, float angulo){
  push();
  noStroke();
  translate(cx,cy);
  rotate(radians(angulo));
  cx=0;cy=0;
  triangle(cx-l8,cy,cx+l8,cy+l4,cx+l8,cy-l4);
  stroke(0);
  ellipse(cx, cy, radius,radius);
  pop();
}

//TRIANGULO AMARILLO
void triangulo5(float cx,float cy, float angulo){
  push();
  noStroke();
  translate(cx,cy);
  rotate(radians(angulo));
  cx=0;cy=0;
  triangle(cx,cy-l8,cx+l4,cy+l8,cx-l4,cy+l8);
  stroke(0);
  ellipse(cx, cy, radius,radius);
  pop();
}

//PARALELOGRAMO CAFE
void paralelogramo(float cx,float cy, float angulo){
  push();
  noStroke();
  translate(cx,cy);
  rotate(radians(angulo));
  cx=0;cy=0;
  quad(cx-l8,cy-l8,cx+(3*l8),cy-l8,cx+l8,cy+l8,cx-(3*l8),cy+l8);
  stroke(0);
  ellipse(cx, cy, radius,radius);
  pop();
}

//CUADRADO CAFE
void cuadrado(float cx,float cy, float angulo){
  push();
  noStroke();
  translate(cx,cy);
  rotate(radians(angulo));
  cx=0;cy=0;
  quad(cx-l4,cy,cx,cy-l4,cx+l4,cy,cx,cy+l4);
  stroke(0);
  ellipse(cx, cy, radius,radius);
  pop();
}

void pez(){
 
  translate(650,200);
  pez =createShape();
  pez.beginShape();
  pez.fill(nivel);
  pez.noStroke();
  pez.vertex(0, 0);
  pez.vertex(h1,0);
  pez.vertex(h1-h2,-h2);
  pez.vertex((h1-h2)+h2,-h2);
  pez.vertex(h1+h2,0);
  pez.vertex(h1+h2+h2,+h2);
  pez.vertex(h1,h1+h2);
  pez.vertex(h1-h2,h1+h2);
  pez.vertex(h1,h1);
  pez.vertex(0,h1);
  pez.vertex(h2,h2);
  endShape(CLOSE);

}



boolean seleccion(float cx, float cy){
  if(mouseButton == LEFT && encima(mouseX,mouseY, cx, cy, radius)) return true;
  else return false;
}

boolean tespacio(float cx,float cy){
  if (keyPressed  && encima(mouseX,mouseY, cx, cy, radius) ) {
       if (key == ' ') return true;
   }
   return false;
}

//obtiene la distancia entre el mouse y el centro del circulo usando pitagoras
boolean encima(float px, float py, float cx, float cy, float r) {
  float distX = px - cx;
  float distY = py - cy;
  float distance = sqrt( (distX*distX) + (distY*distY) );

  //Si la distancia es menor que el radio, esta adentro
  if (distance <= r) {
    return true;
  }
  return false;
}

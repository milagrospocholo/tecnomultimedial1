// tp1 comi 1
// pocholo milagros
PImage bariloche;
PImage lugarft;
PImage paisajebari;
PImage resert;
float texto1x = 0;
PFont fuente;
int pantalla =1; 
int movimiento= 0;
int segundos = 0;


void setup (){
size(640, 480);
textSize(45);
fuente = loadFont("fuente.vlw");
bariloche = loadImage("bariloche.jpg");
lugarft = loadImage("lugarft.jpg");
paisajebari = loadImage("paisajebari.jpg");
resert = loadImage("resert.jpg");
  
}

void draw(){
  background(0);
if(pantalla == 1){
 image(bariloche,0,0,640,480);
fill(255,8,37);
textFont(fuente,45);
text( "Bariloche ya superó su marca histórica de 700 \n mil turistas anuales, \nllegando al millón.",0,texto1x,640,480);
texto1x+=3;

} else if(pantalla== 2){
image(lugarft,0,0,640,480);
fill(0);
text("En Bariloche tenés variedad \n de actividades para disfrutar,",0,texto1x,640,480);
texto1x+=3;

} else if(pantalla == 3){
image(paisajebari,0,0,640,480);
fill(255,8,37);
text("la mejor epoca para viaja \nes en verano",texto1x,0,640,480);
image(resert,550,400, 50,50);
texto1x-=3;

}
if(frameCount % 60 == 0){
  segundos = segundos + 1;
  pantalla = pantalla + 1;
}
  }
    
void mousePressed () {
 
if(mouseX > 550 && mouseY > 400 && mouseX < 600 && mouseY < 450 && pantalla == 3){
      pantalla = 1;
      texto1x= 1;

}
}
  

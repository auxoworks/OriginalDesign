void setup()
{
size(400,400,P3D);
}
int ballX=mouseX;
int ballY=mouseY;
boolean ballDown=true;
int ballSize=40;
int backgroundShade=0;
boolean black=true;
void draw()
{

background(backgroundShade, backgroundShade,backgroundShade);

if(backgroundShade==240){
	black=false;
}

if(backgroundShade==0){
	black=true;
}

if(black=true){
	backgroundShade=backgroundShade+30;
}

if(black=false){
	backgroundShade=backgroundShade-30;	
}

stroke(mouseX,mouseY,mouseX);
ballY=ballY+1;

if (ballSize==20){
	ballDown=false;
}
if (ballSize==100){
	ballDown=true;
}
if (ballDown==true){
	ballSize=ballSize-1;
}
if (ballDown==false){
	ballSize=ballSize+1;
}
translate (mouseX,mouseY);
fill(random(0,400),random(0,400),random(0,400));
sphereDetail(30);
sphere(ballSize);

}
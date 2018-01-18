Star[] stars = new Star[1500];

float speed;

// set the window size and bgColor ...
void setup(){
  size(1900,1000);
  for(int i=0; i<stars.length; i++){
    stars[i] = new Star();
  }
}

//loop 60 times/sec, draw everything on screen
void draw(){
  background(0);
  translate(width/2, height/2);
  speed = map(mouseX, 0, width, 0, 25);
  for(int i=0; i<stars.length; i++){
    stars[i].update(speed);
    stars[i].display();
  }

}

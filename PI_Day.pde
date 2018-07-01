float r = 200;
double totalPoints = 0;
double circlePoints = 0;
double finalPi = 0;

void setup(){
  size(405, 405);
  background(0);
  translate(width/2, height/2);
  
  stroke(255);
  noFill();
  ellipse(0,0,r * 2, r * 2);
  rectMode(CENTER);
  rect(0, 0, r * 2, r * 2);
}

void draw() {

  translate(width/2, height/2);
  
  for(int i = 1; i <= 10000; i++) {
  
  float x = random(-r, r);
  float y = random(-r, r);
  totalPoints++;
  
  double pi;
  double distance = ((double)x * (double)x + (double)y * (double)y);
  if(distance < (double)r * (double)r){
    
    circlePoints++;
    stroke(0, 255, 100, 100);
    
  }
  
  else {
    stroke(255, 255, 255, 100);
  }
  
  strokeWeight(1);
  point(x, y);
  pi = 4 * (float)(circlePoints / totalPoints);
  double diff = Math.abs(Math.PI - pi);
  double finalDiff = Math.abs(Math.PI - finalPi);
  if(diff < finalDiff) {

    finalPi = pi;
    finalDiff = diff;
    println(finalPi);

    }

  }
}
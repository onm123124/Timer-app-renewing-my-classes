float timerDuration = 5000; // Timer duration in milliseconds (5 seconds)
float startTime;
boolean timerStarted = false;

void setup() {
  size(400, 400);
  noFill();
  strokeWeight(10);
  startTime = millis();
}

void draw() {
  background(255);
  
  // Calculate the current elapsed time
  float currentTime = millis() - startTime;
  
  // Calculate the angle for the arc based on the elapsed time
  float angle = map(currentTime, 0, timerDuration, 0, TWO_PI);
  
  // Draw a full circle in gray
  stroke(200);
  arc(width/2, height/2, 300, 300, 0, TWO_PI);
  
  // Draw the blue arc representing the timer progress
  stroke(0, 0, 255);
  arc(width/2, height/2, 300, 300, 0, angle);
  
  // Check if the timer has ended
  if (currentTime >= timerDuration && !timerStarted) {
    timerStarted = true;
    println("Timer has ended!");
  }
}

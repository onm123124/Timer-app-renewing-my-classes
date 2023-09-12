int startTime;
int duration = 60000;

void setup() {
  size(400, 200);
  startTime = millis();
}

void draw() {
  background(220);
  int elapsedTime = millis() - startTime;
  int remainingTime = duration - elapsedTime;
  int seconds = (remainingTime / 1000) % 60;
  int minutes = (remainingTime / 1000) / 60;
  textSize(32);
  textAlign(CENTER, CENTER);
  text(nf(minutes, 2) + ":" + nf(seconds, 2), width / 2, height / 2);
  if (remainingTime <= 0) {
    timerExpired();
    noLoop();
  }
}

void timerExpired() {
  println("Timer expired!");
}

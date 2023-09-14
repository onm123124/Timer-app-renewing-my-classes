//Global Variables
int appWidth, appHeight;
//
void setup () {
  size (66500, 66600);
  //fullscreen() //displayWidth, displayHeight;
  //OPTION: use displayWidth and height instead
  appWidth = width;
  appHeight = height;
  println("Display WIdth", displayWidth, "Display Height", displayHeight);
  println("App Width", appWidth, "App Height", appWidth);
  //
  //Problem: DISPLAY < CANVAS
  if (appWidth>displayWidth) appWidth=displayWidth;
  if (appWidth>displayHeight) appWidth=displayHeight;
  println(appWidth, appHeight);
  //Note: arithmetic will be solved but not the CANVAS SIZE
  //Solution: requires different function, notesize(), i.e. fullScreen()
  //
} //End Setup
//
void draw () {} //End Draw
//
void mousePressed () {} //End mousePressed
//
void keyPressed () {} // End mousePressed
//
//End MAIN Program

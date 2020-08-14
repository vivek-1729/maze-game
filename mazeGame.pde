
int x = 300; // x for you
int y = 770; // y for you
int objex = 400 ; // x for obstacle 0
int gox = 800 ; // x for returning obstacle
boolean gameover = true; // gameover
int objey = 0  ; // y for obstacle 0
int goy = 800; // y for return obstacle 0 
int obstax = 0; // x for obstacle 1
int obstay = 0; // y for obstacle 1
int obstax2 = int(random(20, 780)); // x for return obstacle 1
int obstay2 = int(random(20, 780)); // y for return obstacle 1
int avoix = 0;
int avoiy = 0;
int avoix2 = -10;
int avoiy2 = -10;
int end = 0;
int finish = 0;
boolean text = false;
boolean level1done = false;
boolean retry1 = false;
boolean level2=false;
boolean firstlevel2=false;
int speed = 10;
int righx = 780;
int lefx = 20;
int doy = 780;
int uy = 20;
int stax = 0;
int stay = 20;
int stax2 = 450;
int stay2 = 20;
boolean bye=false;
int end2=0;
boolean saygameover=false;
boolean level2done = false;
boolean retry2=false;
boolean level3=false;
boolean back = false;
int go = -1;
int movex = 350;
int movey = 20;
boolean retry3=false;
int Final = 0;
int Final1 = 0;
boolean pleaseEnd = false;
int done = 0;
boolean beleive = false;
boolean b = false;
boolean a = false;
int l = 60;
boolean start = true;
boolean thiss=true;
boolean aa = true;


void setup () {
  size(800, 800); // size
}   


void draw () {
  if (start==true) {
    gameover=false;
    background(0);
    fill(255);
    textSize(32);
    text(" Welcome, thanks for trying out my game,", 10, 100);
    text("Use keys WASD to move", 10, 150);
    text(" Avoid the moving objects and get to the end)", 10, 200);
    text("of the screen (twice)", 10, 250);
    text(" Once you do that you will go to the next level ", 10, 300);
    text("(once you finish the third level you will get a very ", 10, 350);
    text("special prize, a very special prize don't worry)", 10, 400);
    text("Press S To start the game", 10, 450);
    if (thiss==true) {
      if (keyPressed) {
        if (key=='s') {
          start=false;
          gameover=true;
        }
      }
    }
  }
  if (x==0) {
    x=10;
  }
  if (x==770) {
    x=790;
  }
  if (y==770) {
    y=770;
  }
  if (gameover==true) {  // gameover is true 
    background(0); // black background
    fill(255); // white rectangles
    rect(400, objey, 60, 60); // vertical rectangle 1
    objey=objey+int(random(10, 20)); // moving by 5
    rect(400, goy, 60, 60);  // return vertical rectangle 1x
    rect(avoix, avoiy, 60, 60);
    rect(avoix2, avoiy2, 60, 60);
    avoix=avoix+int(random(10, 20));
    avoiy=avoiy+int(random(10, 20));
    rect(obstax, obstay, 40, 40);  // diagnol rectangle  2
    obstax=obstax+int(random(10, 20)); // moving speed x
    obstay=obstay+int(random(10, 20)); // moving speed y
    rect(obstax2, obstay2, 60, 60);  // return diagnol rectangle 2
    fill(255);
    rect(gox, goy, 60, 60); // return diagnol rectangle 1

    rect(objex, objey, 60, 60); // 
    rect(gox, goy, 60, 60);
    rect(x, y, 20, 20); // you
    if (keyPressed) {
      if (key=='w') {
        y=y-speed;
      }
      if (key=='a') {
        x=x-speed;
      }
      if (key=='s') {
        y=y+speed;
      }
      if (key=='d') {
        x=x+speed;
      }
    }
    rect(objex, 400, 40, 40); // obstacle 1
    objex=objex+int(random(10, 20));
    if (objex>righx) {
      rect(gox, 400, 60, 60); // return obstacle 1
      gox=gox-int(random(10, 20));
    }

    if (y>400+20) { // return crash course collison
    } else {
      if (y<400-20) {
      } else { 
        if (x>gox+20) {
        } else {
          if (x<gox-20) {
          } else {
            background(255, 0, 0);  // returning end 
            gameover=false;
            textSize(32);
            text("Game Over, press r to try again", 0, 400);
          }
        }
      }
    }  
    if (y>400+30) { //  crash course collision
    } else {
      if (y<400-30) {
      } else { 
        if (x>objex+30) {
        } else {
          if (x<objex-30) {
          } else {
            background(255, 0, 0); // end
            gameover=false;
            fill(0);
            textSize(32);
            text("Game Over, press r to try again", 0, 400);
          }
        }
      }
    }
    if (gox<lefx) { // bounce
      objex=0;
      gox=801;
    }

    if (objey>doy) {
      goy=goy-int(random(10, 20));
    }
    if (goy<uy) {
      objey=0;
      goy=801;
    }



    if (y>goy+30) { // return crash course collison
    } else {
      if (y<goy-30) {
      } else { 
        if (x>400+30) {
        } else {
          if (x<400-30) {
          } else {
            background(0, 0, 0);  // returning end 
            gameover=false;
            fill(255);
            textSize(32);
            text("Game Over, press r to try again", 0, 400);
          }
        }
      }
    }  
    if (y>objey+30) { //  crash course collision
    } else {
      if (y<objey-30) {
      } else { 
        if (x>400+30) {
        } else {
          if (x<400-30) {
          } else {
            background(0, 0, 0); // end
            gameover=false;
            fill(255);
            textSize(32);
            text("Game Over, press r to try again", 0, 400);
          }
        }
      }
    }



    if (y>goy+30) { // return crash course collison
    } else {
      if (y<goy-30) {
      } else { 
        if (x>gox+30) {
        } else {
          if (x<gox-30) {
          } else {
            background(0, 0, 0);  // returning end 
            gameover=false;
            fill(255);
            textSize(32);
            text("Game Over, press r to try again", 0, 400);
          }
        }
      }
    }  
    if (y>objey+30) { //  crash course collision
    } else {
      if (y<objey-30) {
      } else { 
        if (x>objex+30) {
        } else {
          if (x<objex-30) {
          } else {
            background(0, 0, 0); // end
            gameover=false;
            fill(255);
            textSize(32);
            text("Game Over, keep r pressed to try again", 0, 400);
          }
        }
      }
    }
    if (obstax>righx) {
      obstax2=obstax2-int(random(10, 20));
    }
    if (obstay>doy) {
      obstay2=obstay2-int(random(10, 20));
    }
    if (obstay<uy) {
      obstay=10;
    }
    if (obstax2<lefx) {
      obstax=0; 
      obstax2=801;
    }
    if (obstay2<uy) {
      obstay=0;
      obstay2=801;
    }
    if (y>obstay2+30) { //  crash course collision
    } else {
      if (y<obstay2-30) {
      } else { 
        if (x>obstax2+30) {
        } else {
          if (x<obstax2-30) {
          } else {
            background(0, 0, 0); // end
            gameover=false;
            fill(255);
            textSize(32);
            text("Game Over, keep r pressed to try again", 0, 400);
          }
        }
      }
    }
    if (y>obstay+30) { //  crash course collision
    } else {
      if (y<obstay-30) {
      } else { 
        if (x>obstax+30) {
        } else {
          if (x<obstax-30) {
          } else {
            background(0, 0, 0); // end
            gameover=false;
            fill(255);
            textSize(32);
            text("Game Over, keep r pressed to try again", 0, 400);
          }
        }
      }
    }
    if (avoix>righx) {
      avoix2=avoix2-int(random(20, 30));
    }
    if (avoix<lefx) {
      avoix=10;
    }
    if (avoiy>doy) {
      avoiy2=avoiy2-int(random(20, 30));
    }
    if (avoiy<uy) {
      avoiy=10;
    }
    if (avoix2<lefx) {
      avoix=0; 
      avoix2=801;
    }
    if (avoiy2<uy) {
      avoiy=0;
      avoiy2=801;
    }
    if (y>avoiy+20) { //  crash course collision
    } else {
      if (y<avoiy-20) {
      } else { 
        if (x>avoix+20) {
        } else {
          if (x<avoix-20) {
          } else {
            background(0, 0, 0); // end
            gameover=false;
            fill(255);
            textSize(32);
            text("Game Over, keep r pressed to try again", 0, 400);
          }
        }
      }
    }
    if (y>avoiy2+20) { //  crash course collision
    } else {
      if (y<avoiy2-20) {
      } else { 
        if (x>avoix2+20) {
        } else {
          if (x<avoix2-20) {
          } else {
            background(0, 0, 0); // end
            gameover=false;
            fill(255);
            textSize(32);
            text("Game Over, keep r pressed to try again", 0, 400);
          }
        }
      }
    }
    if (text==false) {
      rect(0, end, 800, 20);
      textSize(16);
      fill(0);
      text("HALFWAY THERE", 100, 20);
      text("HALFWAY THERE", 600, 20);
      text("HALFWAY THERE", 400, 20);
      fill(255);
      if (firstlevel2==false) { 
        if (y<end) {
          text=true;
          x=300;
          y=770;
        }
      }
    }


    if (text==true) {
      textSize(16);
      rect(0, finish, 800, 20);
      fill(0);
      text("REACH TO WIN, LEVEL 1", 400, 20);
      fill(255);
      if (firstlevel2==false) {
        if (y<finish) {
          level1done=true;
        }
      }
    }
  } // game over for level 1
  /*
this is the end for the logistics of level 1
   the trnastioning from level 1 to 2 is below
   
   
   
   
   */
  if (retry1==false) {
    if (keyPressed) {
      if (key=='r') {
        gameover=true;
        text=false;
        x=300;
        y=770;
        objex=400;
        objey = 400;
        gox=400;
        goy=400;
      }
    }
  }
  if (level1done==true) {
    y=780;
    x=300;
    gameover=false;
    retry1=true;
    background(0);
    textSize(32);
    text("congratulations, you have passed level 1", 0, 400);
    textSize(25);
    text("now there are obstacles that don't move, dont hit them", 0, 150);
    textSize(30);
    text("pro tip: press key 'b' to center yourself on the screen", 0, 200);
    textSize(32);
    text("(so you dont hit the obstacles)", 0, 250);
    text("have fun", 0, 300);
    text("Press 'c' to continue to the next level", 0, 460);
  }
  if (retry1==true) {
    if (keyPressed) {
      if (key=='r') {
        gameover=true;
        x=300;
        y=780;
        objex=400;
        objey = 400;
        gox=400;
        goy=400;
        saygameover=false;
        back=false;
        x=300;
        y=770;
      }
    }
  }
  if (retry2==false) {
    if (keyPressed) {
      if (key=='c') {
        gameover=true;
        level1done=false;
        x=300;
        y=780;
        objex=400;
        objey = 400;
        gox=400;
        goy=400;
        level2=true;
      }
    }
    if (back==true) {
      x=300;
      y=770;
      back=false;
    }
  }
  /*
This is the complete end if end of level 1
   Level 2 is below  
   
   
   
   */





  if (level2==true) {
    if (x==10) {
      x=10;
    }
    if (x==790) {
      x=790;
    }
    if (y==770) {
      y=770;
    }
    if (keyPressed) {
      if (key=='r') {
        gameover=true;
        saygameover=false;
        x=300;
        y=770;
        bye=false;
      }
    }
    fill(0, 255, 0);
    rect(stax, stay, 350, l);
    rect(stax2, stay2, 350, l);
    speed=20;

    text=false;
    if (y<20) {
      firstlevel2 = true;
    }


    if (firstlevel2==true) {
      x=300;
      y=780;
      bye = true;
      firstlevel2=false;
    }
    if (bye==true) { 
      fill(255);
      rect(end2, 0, 800, 40);
      fill(0);
      text("reach to win, end of level 2", 200, 40);

      if (y<40) {
        level2done=true;
      }
    }
    if (keyPressed) {
      if (key=='b') {
        x=400;
      }
    }
    if (x<349) {
      if (y<41) {
        background(0);
        textSize(40);
        fill(255);
        text("gameover, press r to try again", 0, 400);
        saygameover=true;
        bye=false;
      }
    }
    if (x>449) {
      if (y<41) {
        background(0);
        textSize(40);
        fill(255);
        text("gameover, press r to try again", 0, 400);
        saygameover=true;
        bye=false;
      }
    }
    if (saygameover==true) {
      background(0);
      textSize(40);
      fill(255);
      text("gameover, press r to try again", 0, 400);
    }
  } // end of boolean level 2
  /*
This is the end of the logistics of level 2
   The transitioning phase is below 
   */
  if (level2done==true) {
    background(0, 0, 255);
    gameover=false;
    level2=false;
    retry3=true;
    textSize(32);
    text("congratulations, you have passed level 2", 0, 100);
    text("next level you will have a moving object obstruct your path", 0, 150);
    textSize(29);
    text("however you will get an amazing prize when you finish it", 0, 200);
    textSize(32);
    text("pro tip: dont look at the prize for to long", 0, 250);
    text("it will hurt your eyes", 0, 300);
    text("press c to go to the next level", 0, 350);
  }
  if (retry3==true) {
    if (keyPressed) {
      if (key=='c') {
        level3=true;
        x=340;
        y=770;
      }
    }
    /*
  Level 2 is completely done
     Level 3 is below
     
     
     */
    if (level3==true) {
      if (keyPressed) {
        if (key=='r') {
          gameover=true;
        }
      }

      level2=true;
      level2done=false;
      fill(0, 0, 255);
      rect(movex, movey, 100, 60);
      movey=movey+go;

      if (movey<-10) {
        go = 1;
      }
      if (movey>50) {
        go=-1;
      }
      if (y>movey+20) { //  crash course collision
      } else {
        if (y<movey-20) {
        } else { 
          if (x>movex+20) {
          } else {
            if (x<movex-20) {
            } else {
              background(0, 0, 0); // end
              gameover=false;
              fill(255);
              textSize(32);
              text("Game Over, keep r pressed to try again", 0, 400);
            }
          }
        }
      }
      speed=30;
      fill(0);
      if (pleaseEnd == false) {
        rect(0, Final, 800, 60);
      }
      if (pleaseEnd==false) {
        if (y<60) {
          pleaseEnd=true;
        }
      }
      fill(255);
      textSize(16);
      text("Reach To Win Level 3", 390, 40);

      if (pleaseEnd == true) {
        level3=true;
        x=360;
        y=770;
        b=true;
        pleaseEnd=false;
      }
      if (b==true) {
        rect(0, 0, 800, 90);
        l=100;
        if (y<90) {
          beleive=true;
        }
      }
      if (beleive==true) {
        fill(255);
        textSize(32);
        text("this is you special prize", 100, 200);
        text("Don't stare at it for to long", 100, 250);
        background(int(random(0, 255)), random(0, 255), random(0, 255));
      }
      if (x<349) {
        if (y<91) {
          background(0);
          textSize(40);
          fill(255);
          text("gameover, press r to try again", 0, 400);
          saygameover=true;
        }
      }
      if (x>449) {
        if (y<91) {
          background(0);
          textSize(40);
          fill(255);
          text("gameover, press r to try again", 0, 400);
          saygameover=true;
          b=false;
        }
      }
      if (saygameover==true) {
        background(0);
        textSize(40);
        fill(255);
        text("gameover, press r to try again", 0, 400);
        b=false;
      }
    }

    /*
  cheat code below
     
     */
  }
    if (keyPressed) {
    if (key=='z') {

      level2=true;
    }
  }
  if (keyPressed) {
    if (key=='x') {
      level2done=true;
    }
  }

}

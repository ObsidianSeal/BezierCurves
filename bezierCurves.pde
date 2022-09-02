int x1 = int(random(0, 1920));
int y1 = int(random(0, 1080));
int x2 = int(random(0, 1920));
int y2 = int(random(0, 1080));
int x3 = int(random(0, 1920));
int y3 = int(random(0, 1080));
int x4 = int(random(0, 1920));
int y4 = int(random(0, 1080));

boolean drag1 = false;
boolean drag2 = false;
boolean drag3 = false;
boolean drag4 = false;

boolean showControls = true;
boolean canActivate = true;

void setup() {

  fullScreen();
}

void draw() {

  background(0);

  if (keyPressed && key == ENTER && canActivate == true) {

    canActivate = false;
    x1 = int(random(0, 1920));
    y1 = int(random(0, 1080));
    x2 = int(random(0, 1920));
    y2 = int(random(0, 1080));
    x3 = int(random(0, 1920));
    y3 = int(random(0, 1080));
    x4 = int(random(0, 1920));
    y4 = int(random(0, 1080));
  }

  if (dist(x1, y1, mouseX, mouseY) < 30 / 2 && mousePressed) {

    drag1 = true;
  } else if (dist(x2, y2, mouseX, mouseY) < 30 / 2 && mousePressed) {

    drag2 = true;
  } else if (dist(x3, y3, mouseX, mouseY) < 30 / 2 && mousePressed) {

    drag3 = true;
  } else if (dist(x4, y4, mouseX, mouseY) < 30 / 2 && mousePressed) {

    drag4 = true;
  }

  if (drag1 == true) {

    x1 = mouseX;
    y1 = mouseY;
  } else if (drag2 == true) {

    x2 = mouseX;
    y2 = mouseY;
  } else if (drag3 == true) {

    x3 = mouseX;
    y3 = mouseY;
  } else if (drag4 == true) {

    x4 = mouseX;
    y4 = mouseY;
  }

  if (keyPressed && key == ' ' && canActivate == true) {

    if (showControls == true) {

      canActivate = false;
      showControls = false;
    } else {

      canActivate = false;
      showControls = true;
    }
  }

  stroke(#FFFFFF);

  noFill();

  bezier(x1, y1, x2, y2, x3, y3, x4, y4);

  if (showControls == true) {

    stroke(#274690);

    strokeWeight(10);

    line(x1, y1, x2, y2);

    line(x3, y3, x4, y4);

    noStroke();

    fill(#EA526F);

    ellipse(x2, y2, 30, 30);

    ellipse(x3, y3, 30, 30);

    fill(#FF8A5B);

    ellipse(x1, y1, 30, 30);

    ellipse(x4, y4, 30, 30);
  }
}

void mouseReleased() {

  drag1 = false;
  drag2 = false;
  drag3 = false;
  drag4 = false;
}

void keyReleased() {

  canActivate = true;
}

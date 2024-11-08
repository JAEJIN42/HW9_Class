class Smile {

  float x, y, r;

  float xv, yv;


  Smile(float hipX, float hopY, float damR) {

    x = hipX;

    y = hopY;

    r = damR;

    xv = random(-2, 2);

    yv = random(-2, 2);
  }


  void display() {

    circle(x, y, r * 2);
  }


  void move() {

    x += xv;

    y += yv;


    if (x < r || x > width - r) xv *= -1;

    if (y < r || y > height - r) yv *= -1;
  }


  void boom(Smile other) {

    float dx = x - other.x;

    float dy = y - other.y;

    float pit = dx * dx + dy * dy;

    float plusr = r + other.r;


    if (pit < plusr * plusr) {

      float tempX = xv;

      float tempY = yv;

      xv = other.xv;

      yv = other.yv;

      other.xv = tempX;

      other.yv = tempY;
    }
  }
}


Smile[] smiles = new Smile[10];


void setup() {

  size(600, 600);

  for (int i = 0; i < 10; i++) {

    smiles[i] = new Smile(random(width), random(height), 20);
  }
}


void draw() {

  background(255);

  for (int i = 0; i < 10; i++) {

    smiles[i].move();

    smiles[i].display();


    for (int j = i + 1; j < 10; j++) {

      smiles[i].boom(smiles[j]);
    }
  }
}

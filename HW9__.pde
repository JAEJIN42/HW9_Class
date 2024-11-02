jaejin jj;
minchan mc;
taeyoung ty;
void setup(){
  size(800,500);
  jj= new jaejin();
  ty= new taeyoung();
  mc= new minchan();
}
void draw()
{
  background(#0EB4FC);
  fill(#FF3300);
  circle(0,0,150);
  fill(0,200,0);
  triangle(500,200,800,200,650,50);
  fill(0,100,0);
  triangle(400,200,600,200,500,100);
  fill(#F24B4B);
  rect(0,200,width,height);
  stroke(255);
  strokeWeight(10);
  line(0,200+(height-200)/3,width,200+(height-200)/3);
  line(0,200+(height-200)/3*2,width,200+(height-200)/3*2);
  jj.move();
  ty.move();
  mc.move();
}
class jaejin
{  
  float x=-40,y=110,d=4;
  float v=2,moving=1,tick=0,plus=0;
  void move()
  {
    x+=v;
    if(tick==20)
    {
     if(moving==0)
     {
         moving=1;
     }
     else
       moving=0;
      tick=0;
    }
    tick++;
   
    if(moving==0)
      show1();
    else if(moving==1)
      show2();
  }
  void show1()
  {
    fill(255);
    strokeWeight(1);
    stroke(0);
    circle(x,y,d*20);//face
    circle(x-d*4,y-4*d,d*4);//left eye
    circle(x+d*4,y-4*d,d*4);//right eye
    arc(x-d*4,y-6*d,d*4,d*2,PI,2*PI);//right eyebrow
    arc(x+d*4,y-6*d,d*4,d*2,PI,2*PI);//left eyebrow
    arc(x,y+d,d*3,d,0.5*PI,1.5*PI);//nose
    fill(255,0,0);
    arc(x,y+d*4,d*6,d*2,0,PI);//mouth
    strokeWeight(5);
    line(x,y+10*d,x,y+10*d+50);
    line(x,y+10*d+50,x-22,y+10*d+75);
    line(x-22,y+10*d+75,x-45,y+10*d+60);
    line(x,y+10*d+50,x+40,y+10*d+105);
    line(x,y+10*d+10,x+10,y+10*d+35);
    line(x+10,y+10*d+35,x+32,y+10*d+34);//오른쪽손
    line(x,y+10*d+10,x-16,y+10*d+25);
    line(x-16,y+10*d+25,x-7,y+10*d+42);//왼쪽손
  }
  void show2()
  {
    fill(255);
    strokeWeight(1);
    stroke(0);
    circle(x,y,d*20);//face
    circle(x-d*4,y-4*d,d*4);//left eye
    circle(x+d*4,y-4*d,d*4);//right eye
    arc(x-d*4,y-6*d,d*4,d*2,PI,2*PI);//right eyebrow
    arc(x+d*4,y-6*d,d*4,d*2,PI,2*PI);//left eyebrow
    arc(x,y+d,d*3,d,0.5*PI,1.5*PI);//nose
    fill(255,0,0);
    arc(x,y+d*4,d*6,d*2,0,PI);//mouth
    strokeWeight(5);
    line(x,y+10*d,x,y+10*d+50);//몸
    line(x,y+10*d+50,x-8,y+10*d+90);
    line(x-8,y+10*d+90,x-35,y+10*d+105);//왼쪽다리
    line(x,y+10*d+50,x+30,y+10*d+60);
    line(x+30,y+10*d+60,x+33,y+10*d+90);//오른쪽다리
    line(x,y+10*d+10,x+15,y+10*d+30);
    line(x+15,y+10*d+30,x+32,y+10*d+22);//오른쪽손
    line(x,y+10*d+10,x-23,y+10*d+8);
    line(x-23,y+10*d+8,x-35,y+10*d+27);//왼쪽손
  }
}
class taeyoung
{
  float x=-200,y=220,z=20;
  float v=5,moving=1,tick=0,plus=0;
  void move()
  {
    x+=v;
    if(tick==10)
    {
     if(moving==0)
     {
         moving=1;
     }
     else
       moving=0;
      tick=0;
    }
    tick++;
   
    if(moving==0)
      show1();
    else if(moving==1)
      show2();
  }
  void show1()
  {
    fill(200,200,0);
    stroke(0);
    strokeWeight(1);
    circle(x,y,z*4);//face
    quad(x-z*4,y-z*3, x-z*3,y-z*2, x-z*2,y, x-z*4,y-z*3);//left wing1
    quad(x-z*4,y+z*3, x-z*3,y+z*2, x-z*2,y, x-z*4,y+z*3);//left wing2
    quad(x+z*4,y-z*3, x+z*3,y-z*2, x+z*2,y, x+z*4,y-z*3);//right wing1
    quad(x+z*4,y+z*3, x+z*3,y+z*2, x+z*2,y, x+z*4,y+z*3);//rignt wing2
    fill(200,200,200);
    arc(x,y+z,z,z/2,0,PI);//mouse
    fill(200,0,0);
    quad(x-z*3/2,y-z/2, x-z/2,y, x-z*6/5,y, x-z*3/2,y-z/2);//left eye
    quad(x+z*3/2,y-z/2, x+z/2,y, x+z*6/5,y, x+z*3/2,y-z/2);//right eye
    float d=z/5;
    strokeWeight(5);
    line(x,y+10*d,x,y+10*d+50);
    line(x,y+10*d+50,x-22,y+10*d+75);
    line(x-22,y+10*d+75,x-45,y+10*d+60);
    line(x,y+10*d+50,x+40,y+10*d+105);
    line(x,y+10*d+10,x+10,y+10*d+35);
    line(x+10,y+10*d+35,x+32,y+10*d+34);//오른쪽손
    line(x,y+10*d+10,x-16,y+10*d+25);
    line(x-16,y+10*d+25,x-7,y+10*d+42);//왼쪽손
  }
  void show2()
  {
    fill(200,200,0);
    stroke(0);
    strokeWeight(1);
    circle(x,y,z*4);//face
    quad(x-z*4,y-z*3, x-z*3,y-z*2, x-z*2,y, x-z*4,y-z*3);//left wing1
    quad(x-z*4,y+z*3, x-z*3,y+z*2, x-z*2,y, x-z*4,y+z*3);//left wing2
    quad(x+z*4,y-z*3, x+z*3,y-z*2, x+z*2,y, x+z*4,y-z*3);//right wing1
    quad(x+z*4,y+z*3, x+z*3,y+z*2, x+z*2,y, x+z*4,y+z*3);//rignt wing2
    fill(200,200,200);
    arc(x,y+z,z,z/2,0,PI);//mouse
    fill(200,0,0);
    quad(x-z*3/2,y-z/2, x-z/2,y, x-z*6/5,y, x-z*3/2,y-z/2);//left eye
    quad(x+z*3/2,y-z/2, x+z/2,y, x+z*6/5,y, x+z*3/2,y-z/2);//right eye
    float d=z/5;
    strokeWeight(5);
    line(x,y+10*d,x,y+10*d+50);//몸
    line(x,y+10*d+50,x-8,y+10*d+90);
    line(x-8,y+10*d+90,x-35,y+10*d+105);//왼쪽다리
    line(x,y+10*d+50,x+30,y+10*d+60);
    line(x+30,y+10*d+60,x+33,y+10*d+90);//오른쪽다리
    line(x,y+10*d+10,x+15,y+10*d+30);
    line(x+15,y+10*d+30,x+32,y+10*d+22);//오른쪽손
    line(x,y+10*d+10,x-23,y+10*d+8);
    line(x-23,y+10*d+8,x-35,y+10*d+27);//왼쪽손
  }
}
class minchan
{
  float x=-100,y=340,d=40;
  float v=3.5,moving=1,tick=0,plus=0;
  void move()
  {
    x+=v;
    if(tick==15)
    {
     if(moving==0)
     {
         moving=1;
     }
     else
       moving=0;
      tick=0;
    }
    tick++;
   
    if(moving==0)
      show1();
    else if(moving==1)
      show2();
  }
  void show1()
  {    
    stroke(0,0,0);
    strokeWeight(d/20);
    fill(242, 159, 5);
    circle(x-d/2,y-d*4/5,d/2);//왼쪽 귀
    circle(x+d/2,y-d*4/5,d/2);//오른쪽 귀
    ellipse(x,y,2.1*d,2*d);//얼굴
    noStroke();
    fill(255,255,255);
    circle(x-14*d/100,26*d/100+y,d*3/10);//왼쪽 인중
    circle(x+14*d/100,26*d/100+y,d*3/10);//오른쪽 인중
    strokeWeight(d*3/50);
    stroke(0,0,0);
    fill(242, 159, 5);
    line(x-58*d/100,y-35*d/100,x-22*d/100,y-35*d/100);//왼쪽 눈썹
    line(58*d/100+x,y-35*d/100,22*d/100+x,y-35*d/100);//오른쪽쪽 눈썹
    fill(0,0,0);
    circle(x-40*d/100,y-11*d/100,8*d/100);//왼쪽 눈
    circle(x+40*d/100,y-11*d/100,8*d/100);//오른쪽 눈
    circle(x,15*d/100+y,7*d/100);//코
    fill(252, 98, 111);
    noStroke();
    ellipse(x-55*d/100,17*d/100+y,27*d/100,12*d/100);//왼쪽 볼
    ellipse(55*d/100+x,17*d/100+y,27*d/100,12*d/100);//오른쪽 볼
    stroke(0);
    strokeWeight(5);
    line(x,y+d,x,y+d+50);
    line(x,y+d+50,x-22,y+d+75);
    line(x-22,y+d+75,x-45,y+d+60);
    line(x,y+d+50,x+40,y+d+105);
    d/=10;
    line(x,y+10*d+10,x+10,y+10*d+35);
    line(x+10,y+10*d+35,x+32,y+10*d+34);//오른쪽손
    line(x,y+10*d+10,x-16,y+10*d+25);
    line(x-16,y+10*d+25,x-7,y+10*d+42);//왼쪽손
    d*=10;  
  }
  void show2()
  {    
    stroke(0,0,0);
    strokeWeight(d/20);
    fill(242, 159, 5);
    circle(x-d/2,y-d*4/5,d/2);//왼쪽 귀
    circle(x+d/2,y-d*4/5,d/2);//오른쪽 귀
    ellipse(x,y,2.1*d,2*d);//얼굴
    noStroke();
    fill(255,255,255);
    circle(x-14*d/100,26*d/100+y,d*3/10);//왼쪽 인중
    circle(x+14*d/100,26*d/100+y,d*3/10);//오른쪽 인중
    strokeWeight(d*3/50);
    stroke(0,0,0);
    fill(242, 159, 5);
    line(x-58*d/100,y-35*d/100,x-22*d/100,y-35*d/100);//왼쪽 눈썹
    line(58*d/100+x,y-35*d/100,22*d/100+x,y-35*d/100);//오른쪽쪽 눈썹
    fill(0,0,0);
    circle(x-40*d/100,y-11*d/100,8*d/100);//왼쪽 눈
    circle(x+40*d/100,y-11*d/100,8*d/100);//오른쪽 눈
    circle(x,15*d/100+y,7*d/100);//코
    fill(252, 98, 111);
    noStroke();
    ellipse(x-55*d/100,17*d/100+y,27*d/100,12*d/100);//왼쪽 볼
    ellipse(55*d/100+x,17*d/100+y,27*d/100,12*d/100);//오른쪽 볼
    stroke(0);
    strokeWeight(5);
    d/=10;
    line(x,y+10*d,x,y+10*d+50);//몸
    line(x,y+10*d+50,x-8,y+10*d+90);
    line(x-8,y+10*d+90,x-35,y+10*d+105);//왼쪽다리
    line(x,y+10*d+50,x+30,y+10*d+60);
    line(x+30,y+10*d+60,x+33,y+10*d+90);//오른쪽다리
    line(x,y+10*d+10,x+15,y+10*d+30);
    line(x+15,y+10*d+30,x+32,y+10*d+22);//오른쪽손
    line(x,y+10*d+10,x-23,y+10*d+8);
    line(x-23,y+10*d+8,x-35,y+10*d+27);//왼쪽손
    d*=10;
  }
}

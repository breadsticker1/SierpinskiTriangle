public void setup()
{
  size(400,700);
  background(#E8EDF5);
}
public void draw()
{
  fill(#D5E0F2);
  noStroke();
  sierpinski(0,0,800);
  //tree stump
  fill(#AF8361);
  rect(0,670,80,80);
  //tree
  fill(#9BB77C);
  triangle(0,0,0,670,335,670);
  //garland
  stroke(#FFF0B4);
  strokeWeight(6);
  beginShape();
  curveVertex(0,50);
  curveVertex(0,50);
  curveVertex(40,80);
  curveVertex(-80,130);
  curveVertex(90,180);
  curveVertex(-80,280);
  curveVertex(-100,300);
  curveVertex(180,350);
  curveVertex(-130,450);
  curveVertex(240,490);
  curveVertex(-180,650);
  curveVertex(335,670);
  curveVertex(335,670);
  endShape();
  //ornaments
  noStroke();
  fill(#F28B8B);
  ellipse(20,90,12,12);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20)
  {
    triangle(x+len/2, y+len, x, y, x+len, y);
  }
  else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y+len/2,len/2);
  }
}

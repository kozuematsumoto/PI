PiDay[] piDayP = new PiDay[int(TWO_PI*PI*PI)];
PiDay[] piDayI = new PiDay[int(TWO_PI*PI*PI)];

void setup()
{
  // Fast movement
    size(int(TWO_PI*TWO_PI*TWO_PI*TWO_PI), int(TWO_PI*TWO_PI*TWO_PI*PI), P2D);

  // Slow movement
  //size(int(TWO_PI*TWO_PI*TWO_PI*TWO_PI), int(TWO_PI*TWO_PI*TWO_PI*PI));

  for (int p = 0; p<piDayP.length; p++) 
  {
    piDayP[p] = new PiDay(p, PI);
    piDayI[p] = new PiDay(p, -PI);
  }
}

void draw()
{
  background(PI);

  fill(TWO_PI, TWO_PI, TWO_PI*TWO_PI*TWO_PI);
  textSize(PI*TWO_PI*PI*HALF_PI);
  text("Happy Pi Day!", width-(TWO_PI*TWO_PI*TWO_PI*PI), height-(TWO_PI*PI*HALF_PI));
  pushMatrix();                                            // Use pushmatrix so we can translate
  translate(width/PI, height/PI);            
  for (int i = 0; i<piDayP.length; i++) 
  {
    piDayP[i].update();
    piDayP[i].display(i);
    piDayI[i].update();
    piDayI[i].display(i);
  }
  popMatrix();
}


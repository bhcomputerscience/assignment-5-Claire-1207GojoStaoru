PImage a,b,c,d,e,f,g,h;
Patient p;
ArrayList<Medicine> meds;   //  aa, bb, cc

void setup()
{
  size(600,400);
  a = loadImage("H.png");
  b = loadImage("P.png");
  c = loadImage("B.png");
  d = loadImage("G.png");
  e = loadImage("M.png");
  f = loadImage("R.png");
  g = loadImage("X.png");
  h = loadImage("GGG.png");
  p = new Patient();
  meds = new ArrayList<Medicine>();
  meds.add(new Medicine(d,20,20,60,80));
  meds.add(new Medicine(c,6,100,80,80));
  meds.add(new Medicine(b,0,180,90,90));
}
void draw()
{
  background(252);
  image(a,0,0,600,400);
  for(Medicine m : meds)
  {
    m.display();
  }
  image(f,200,100,300,250);
  image(g,480,0,120,100);
  p.show();
  image(e,60,0,200,60);
  p.hp();
}
void mousePressed()
{
  if(mouseX > 480 && mouseY < 100)
  {
    p.s = true;
  }
 for(int i = 0; i < meds.size(); i++)
  {
    if(meds.get(i).click(mouseX,mouseY))
    {
      p.fix();
    }
   }
}

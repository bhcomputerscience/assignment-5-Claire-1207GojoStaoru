class Patient
{  
  boolean s = false;
  int n = 5;
  float hp = 0; 
  ArrayList<PVector> points;
  Patient()
  {
    points = new ArrayList<PVector>();    
    for(int i = 0; i < 5; i++)
    {
      float x = random(280,420);
      float y = random(240,360);
      points.add(new PVector(x,y));
    }
  }
  void show()
  {
    if(s)
    {
      image(h,260,220,180,180);
      fill(#f4f711);
      for(int i = 0; i < n; i++)
      {
        PVector p = points.get(i);
        ellipse(p.x, p.y, 15, 15);
      }
    }
  }  
  void fix()
  {
    if(s && n > 0)
    {
      n = n - 1;
      hp = hp + 20;
    }
  } 
  void hp()
  {
    if(hp > 100) hp = 100;
    fill(0,255,0);
    rect(70,20,hp*2,15);
  }
}

class Medicine{
  PImage img;
  float x,y,w,h;
  Medicine(PImage i, float xx, float yy, float ww, float hh)
  {
    img = i;
    x = xx;
    y = yy;
    w = ww;
    h = hh;
  }
  void display()
  {
    image(img,x,y,w,h);
  }
  boolean click(float mx, float my)
  {
    if(mx>x && mx<x+w && my>y && my<y+h)
    {
      return true;
    }
    return false;
  }
}

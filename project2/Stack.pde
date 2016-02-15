class Stack extends Walker {
  int yLoc;
  
  Stack (PVector loc, PVector tendency) {
    super (loc, tendency);
    yLoc = 0;
  }
  
  void printName() {
    fill (0);
    textAlign (CENTER, CENTER);
    text ("STACK", loc.x, loc.y);
  }
  
  void printInfo() {
    // elements
    textAlign (LEFT, BOTTOM);
    String elementCount = "ELEMENTS: " + count;
    text (elementCount, 260, 725);
  }
    
  void eat (Prey p) {
    if ((p.loc.x < 251) || ((p.loc.x > 500) && (p.loc.x < 751))) {
      count++;
      data.add (p);
      p.loc.x = 625;
      p.loc.y = 742 - yLoc;
      yLoc += 8;
      // subtract location by 8 after each iteration
    } else {
      if (count > 0) {
        count--;
      }
      data.remove (p);
      // delete data from structure
    }
  }
}
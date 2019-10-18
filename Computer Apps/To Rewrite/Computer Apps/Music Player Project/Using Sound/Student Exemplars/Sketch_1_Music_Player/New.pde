


  int x, y;

  int w, h;

  color basecolor, highlightcolor;

  color currentcolor;

  boolean over = false;

  boolean pressed = false;   

  

  void pressed() {

    if(over && mousePressed) {

      pressed = true;

    } else {

      pressed = false;

    }    

  }

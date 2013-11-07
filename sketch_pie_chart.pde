//Man Zhu
//This code demonstrate the frequency of the appearances of 
//major social media icons on top 15 news sites


PFont titleFont;
String[] socialmedia = {
  "FB", "TW", "LI", "G+", "Em", "O"
};
int[] frequency = {
  14, 14, 5, 10, 10, 10
};
String[] fullname = {
  "Facebook", "Twitter", "Linkedin", "Google+", "Emails", "Others"
};

void setup() {
  size(800, 400);
  titleFont = createFont("Arial", 16, true);
  smooth();
  rectMode(CENTER);
}
void draw() {
  background(#cfcbcb);
  noStroke();

  //the size of the borders
  int bb = 40;//bottom border
  int lb = 75;//left side border
  
//define the position of bars
  for (int i = 0; i < socialmedia.length; i++) {
    fill(255);
    int w = 50; //width of bars
    int s = 10; //space betwen bars
    int[] t = new int[socialmedia.length];//tall for bars
    t[i] = frequency[i]*20;
    int[] x = new int[socialmedia.length];
    x[i] = int (lb + (i + .5) * (w + s));
    int[] y = new int[socialmedia.length];
    y[i] = height - bb - t[i]/2;

    rect(x[i], y[i], w, t[i]);

    //short name of social media on the bottom border
    fill(#EA6045);
    textAlign(CENTER);
    textFont(titleFont, 16);
    text(socialmedia[i], x[i], height - bb/2);

    //the number on the left side of border
    //stroke(#EA6045);
    textFont(titleFont);
    textAlign(RIGHT, CENTER);
    for (int j = 0; j < 15; j++) {
      int y_ = height -bb -j*20;
      // line(lb - 5, y_, lb - 8, y_);
      text(j, lb - 15, y_);
    }

    //The title of the chart
    textAlign(CENTER);
    textFont(titleFont, 16);
    text("Social Meida Icon Appearance on Top 15 News Sites", 250, 50);

//interaction with the chart
    if (mouseX > x[i] - w/2&& mouseX < x[i] + w/2 &&
      mouseY > y[i] - t[i]/2 && mouseY < y[i] + w/2) {
      fill(#EA6045);
      rect(x[i], y[i], w, t[i]);
      textFont(titleFont);
      textAlign(CENTER);
      //info on rollover...
      text(fullname[i] + ": " + frequency[i], x[i], y[i] - t[i]/2 - 10);
      //...or info on click
      if (mousePressed) {
      } 
      else {
        fill(0);
      }
    }
  }
}



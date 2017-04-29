String file = "280-309.csv";
Table table;
int index;
int beat;

circle[] arcircle1;


float r = 100; // Radius
float    a = 0;
float    ai = -0.01;
float    sr;
 float   cr;
 float   n = 0; // Noise
 float   ni = 0.001; // Noise increment
 float   m = 0; // Noise
 float   mi = 0.001; // Noise increment
 float   i;
 float    b = 0;
float    bi = -0.01;
float    c = 0;
float    ci = -0.01;
float   o = 0; // Noise
 float   oi = 0.001; // Noise increment
 
void setup() {
    frameRate(24);
  fullScreen();
  //size(600, 600); 
    background(0);
    noStroke();
    
    
    table = loadTable(file,"header");
  
  arcircle1 = new circle[table.getRowCount()];
  
   
   index = 0;
   beat = 0;
} 

void draw() {
    fill(0,90);
    rect(0, 0, width, height);
    
    if(index>=arcircle1.length){
     index=0;
     }
    
    
    
    
    
    fill(255,85,0,50);
    for (i = 0; i < table.getRow(index).getFloat("excitement"); i++) {
      if (i%2 == 0){
       ellipse(
          350 + (sin(radians(i * 10) + a) * (r + sin(n) * 75)),
          200 + (cos(radians(i * 10) - a) * (r + cos(n) * 75)),
          table.getRow(index).getFloat("excitement"), table.getRow(index).getFloat("excitement")
        );
      } else {
        ellipse(
          350 + (sin(radians(i * 10) - a) * (r + cos(n) * 75)),
          200 + (cos(radians(i * 10) + a) * (r + sin(n) * 75)),
          table.getRow(index).getFloat("excitement"), table.getRow(index).getFloat("excitement")
       );
      }
        n += ni;
    } a += ai;
    
    
    //222222222222222222222222222
    
    fill(191,8,186,50);
    for (i = 0; i < table.getRow(index).getFloat("frustration"); i++) {
      if (i%2 == 0){
       ellipse(
          850 + (sin(radians(i * 10) + b) * (r + sin(n) * 75)),
          200 + (cos(radians(i * 10) - b) * (r + cos(n) * 75)),
          table.getRow(index).getFloat("frustration"), table.getRow(index).getFloat("frustration")
        );
      } else {
        ellipse(
          850 + (sin(radians(i * 10) - b) * (r + cos(n) * 75)),
          200 + (cos(radians(i * 10) + b) * (r + sin(n) * 75)),
          table.getRow(index).getFloat("frustration"), table.getRow(index).getFloat("frustration")
       );
      }
        m += mi;
    } b += bi;
    
    
    //333333333333333333333333333333333
    
    fill(91,154,0,50);
    for (i = 0; i < table.getRow(index).getFloat("valence"); i++) {
      if (i%2 == 0){
       ellipse(
          350 + (sin(radians(i * 10) + c) * (r + sin(n) * 75)),
          600 + (cos(radians(i * 10) - c) * (r + cos(n) * 75)),
          table.getRow(index).getFloat("valence"), table.getRow(index).getFloat("valence")
        );
      } else {
        ellipse(
          350 + (sin(radians(i * 10) - c) * (r + cos(n) * 75)),
          600 + (cos(radians(i * 10) + c) * (r + sin(n) * 75)),
          table.getRow(index).getFloat("valence"), table.getRow(index).getFloat("valence")
       );
      }
        o += oi;
    } c += ci;
    
    
  //4444444444444444444444444444444
  
  fill(0,137,235,50);
    for (i = 0; i < table.getRow(index).getFloat("focus"); i++) {
      if (i%2 == 0){
       ellipse(
          850 + (sin(radians(i * 10) + c) * (r + sin(n) * 75)),
          600 + (cos(radians(i * 10) - c) * (r + cos(n) * 75)),
          table.getRow(index).getFloat("focus"), table.getRow(index).getFloat("focus")
        );
      } else {
        ellipse(
          850 + (sin(radians(i * 10) - c) * (r + cos(n) * 75)),
          600 + (cos(radians(i * 10) + c) * (r + sin(n) * 75)),
          table.getRow(index).getFloat("focus"), table.getRow(index).getFloat("focus")
       );
      }
        o += oi;
    } c += ci;




  index = index + 1;
  
  beat ++;
  if ( beat == 24*15 ){
    exit();
  }
  saveFrame("data/screen/####.jpg");
  
  
}
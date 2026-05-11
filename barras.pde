int numBarras = 20;
float[] altura = new float[numBarras]; 
int anchoBarra;
void setup() {
  size(800, 600);
  anchoBarra = width / numBarras;
  for (int i = 0; i < numBarras; i++) {
    altura[i] = 50;
  }
}
void draw() {
  background(255);
  //para evitar errores de que si sale
  int tipoDeBarra = mouseX / anchoBarra;
  if (tipoDeBarra >= 0 && tipoDeBarra < numBarras) {
    altura[tipoDeBarra] = height - mouseY;
  }
  fill(100);
  for (int i = 0; i < numBarras; i++) {
    rect(i * anchoBarra, height - altura[i], anchoBarra,altura[i]);
  }
}

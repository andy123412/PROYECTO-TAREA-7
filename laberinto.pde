int columnas = 20;
int filas = 20;
int tam = 60;
int[][] celdas = new int[columnas][filas];
void setup() {
  size(600, 600);
  //llenamos la matriz con numeros al azar entre 0, 1 y 2
  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {
      celdas[i][j] = int(random(3)); 
    }
  }
}
void draw() {
  background(255);
  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {
      int x = i * tam;
      int y = j * tam;
      stroke(0);
      if (celdas[i][j] == 1) {
        line(x, y, x + tam, y + tam);
      }
      if (celdas[i][j] == 2) {
        line(x + tam, y, x, y + tam);
      }
    }
  }
}

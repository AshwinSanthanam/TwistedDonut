DonutGenerator donutGenerator;
Renderer renderer;
ArrayList<DonutSlice> donut;

void setup() {
  size(800, 800);
  donutGenerator = new DonutGenerator(32, 100, 150, new Twister(32));
  renderer = new Renderer();
  donut = donutGenerator.generate();
}

void draw() {
  background(0);
  translate(width / 2, height / 2);
  renderer.render(donut, PI / 4);
}

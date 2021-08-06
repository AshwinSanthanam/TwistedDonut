public class Renderer {

  public void render(Iterable<DonutSlice> donut, float viewAngle) {
    PVector origin = new PVector(0, 0, 0);
    
    for(DonutSlice donutSlice : donut) {
      PVector p1 = Transform.rotateX(donutSlice.getP1(), viewAngle, origin);
      PVector p2 = Transform.rotateX(donutSlice.getP2(), viewAngle, origin);
      
      stroke(255);
      strokeWeight(2);
      drawLine(p1, p2);
      stroke(0);
      strokeWeight(0);
      fill(255, 0, 0);
      drawCircle(p1);
      fill(0, 0, 255);
      drawCircle(p2);
    }
  }
  
  private void drawCircle(PVector p) {
    circle(p.x, p.y, 10);
  }
  
  private void drawLine(PVector p1, PVector p2) {
    line(p1.x, p1.y, p2.x, p2.y);
  }
}

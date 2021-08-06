public class DonutGenerator {
  private final int _sliceCount;
  private final float _innerRadius;
  private final float _outerRadius;

  public DonutGenerator(int sliceCount, float innerRadius, float outerRadius) {
    _sliceCount = sliceCount;
    _innerRadius = innerRadius;
    _outerRadius = outerRadius;
  }
  
  public ArrayList<DonutSlice> generate() {
    ArrayList<DonutSlice> donut = new ArrayList<DonutSlice>();
    float spanAngle = 2 * PI / _sliceCount;
    PVector p1 = new PVector(_innerRadius, 0, 0);
    PVector p2 = new PVector(_innerRadius + _outerRadius, 0, 0);
    
    for(int i = 0; i < _sliceCount; i++) {
      float currentAngle = spanAngle * i;
      PVector rotatedP1 = Transform.rotateY(p1, currentAngle);
      PVector rotatedP2 = Transform.rotateY(p2, currentAngle);
      DonutSlice donutSlice = new DonutSlice(rotatedP1, rotatedP2);
      donut.add(donutSlice);
    }
    return donut;
  }
} 

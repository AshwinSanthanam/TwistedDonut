public class DonutGenerator {
  private final int _sliceCount;
  private final float _innerRadius;
  private final float _outerRadius;
  private final Twister _twister;

  public DonutGenerator(int sliceCount, float innerRadius, float outerRadius, Twister twister) {
    _sliceCount = sliceCount;
    _innerRadius = innerRadius;
    _outerRadius = outerRadius;
    _twister = twister;
  }
  
  public ArrayList<DonutSlice> generate() {
    ArrayList<DonutSlice> donut = new ArrayList<DonutSlice>();
    float spanAngle = 2 * PI / _sliceCount;
    PVector p1 = new PVector(_innerRadius, 0, 0);
    PVector p2 = new PVector(_innerRadius + _outerRadius, 0, 0);
    PVector midPoint = new PVector((2 * _innerRadius + _outerRadius) / 2, 0, 0);
    
    for(int i = 0; i < _sliceCount; i++) {
      float currentAngle = spanAngle * i;
      float twistAngle = _twister.twistAngle(i); //<>//
      
      PVector rotatedP1 = Transform.rotateY(Transform.rotateZ(p1, twistAngle, midPoint), currentAngle);
      //PVector rotatedP1 = Transform.rotateY(p1XRotation, currentAngle);
      PVector rotatedP2 = Transform.rotateY(Transform.rotateZ(p2, twistAngle, midPoint), currentAngle);
      DonutSlice donutSlice = new DonutSlice(rotatedP1, rotatedP2);
      donut.add(donutSlice);
    }
    return donut;
  }
} 

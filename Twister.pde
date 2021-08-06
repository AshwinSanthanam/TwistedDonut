public class Twister {
  private final int _sliceCount;
  
  public Twister(int sliceCount) {
    _sliceCount = sliceCount;
  }
  
  public float twistAngle(int slice) {
    float unitTwist = PI / _sliceCount;
    return unitTwist * slice;
  }
  
}

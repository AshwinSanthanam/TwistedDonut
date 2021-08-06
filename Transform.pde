public static class Transform {
  
  public static PVector rotateY(PVector p, float angle) {
    float cos = cos(angle);
    float sin = sin(angle);
    
    float x = p.x * cos - p.z * sin;
    float y = p.y;
    float z = p.x * sin + p.z * cos;
    
    return new PVector(x, y, z);
  }
  
    public static PVector rotateX(PVector p, float angle) {
    float cos = cos(angle);
    float sin = sin(angle);
    
    float x = p.x;
    float y = p.y * cos - p.z * sin;
    float z = p.y * sin + p.z * cos;
    
    return new PVector(x, y, z);
  }
}

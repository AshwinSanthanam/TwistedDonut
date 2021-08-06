public static class Transform {
  
  public static PVector rotateY(PVector p, float angle) {
    float cos = cos(angle);
    float sin = sin(angle);
    
    float x = p.x * cos - p.z * sin;
    float y = p.y;
    float z = p.x * sin + p.z * cos;
    
    return new PVector(x, y, z);
  }
  
  public static PVector rotateX(PVector p, float angle, PVector origin) {
    float cos = cos(angle);
    float sin = sin(angle);
    
    float shiftedY = p.y - origin.y;
    float shiftedZ = p.z - origin.z;

    float y = shiftedY * cos - shiftedZ * sin + origin.y;
    float z = shiftedY * sin + shiftedZ * cos + origin.z;
    
    return new PVector(p.x, y, z);
  }
  
  public static PVector rotateZ(PVector p, float angle, PVector origin) {
    float cos = cos(angle);
    float sin = sin(angle);
    
    float shiftedX = p.x - origin.x;
    float shiftedY = p.y - origin.y;

    float x = (shiftedX * cos - shiftedY * sin) + origin.x;
    float y = (shiftedX * sin + shiftedY * cos) + origin.y;
    
    return new PVector(x, y, p.z);
  }
}

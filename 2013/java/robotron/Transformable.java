package robotron;

import java.util.List;

public interface Transformable<T> extends Renderable<T> {
  public enum Type {CAR, AIRPLANE, SUBMARINE}; 
  public enum Color {RED, YELLOW, BLUE}; 
  		
  T setType(Type type);
  T addPart(Part part);
  List<Part> getParts();
  T setColor(Color color);
}

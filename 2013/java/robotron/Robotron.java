package robotron;

public abstract class Robotron implements Transformable<Robotron> {
    @Override
  public Robotron render() {
      for (Part part : this.getParts()) {
        part.render();
      }
      return this;
  }

  @Override public abstract Robotron setType(Type type);
  @Override public abstract Robotron addPart(Part part);
  @Override public abstract Robotron setColor(Color color);
}

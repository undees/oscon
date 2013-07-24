
public interface Renderable<T> {
  T render();
  T setCanvas();
  T setTexture();
  T setResolution();
}

public interface Transformable<T> extends Renderable<T> {
  void preTransform();
  void postTransform();
  T setParts(List<? extends Renderable>);
}

public interface class Part extends Renderable<Part> {
  Part render();
  Part setCanvas();
  Part setTexture();
  Part setResolution();
}

public abstract class Robosaur implements Transformable<Robosaur>, List<? extends Part> {
  ...
}

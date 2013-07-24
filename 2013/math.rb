class Result
  def fill_with(value)
  end
end

class Node
  def space_needed
    42
  end

  def make_space(amount)
    Result.new
  end
end

class ANTLRParser
  def current_node
    Node.new
  end
end

class Adder
  def initialize
    @antlr_parser = ANTLRParser.new
  end

  def add(a, b)
    space  = @antlr_parser.current_node.space_needed
    do_stuff_to(a, space)
    do_stuff_to(b, space)
    result = @antlr_parser.current_node.make_space(space)
    result.fill_with(a + b)
  end

  private

  def do_stuff_to(value, space)
  end
end

Adder.new.add([1, 2, 3], [4, 5, 6])

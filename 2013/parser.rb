class ANTLRParser
  def parse(s)
  end
end

class YACCParser
  def parse(s)
  end
end

class LanguageProcessor
  def parse(s)
    parser.parse(s)
  end

  def parser
    @parser ||= create_parser
  end

private

  def create_parser
    xml    = read_ridiculously_long_xml_file
    config = hash_from_xml(xml)
    type   = config['type']

    case type
    when "ANTLR" then ANTLRParser.new
    when "yacc"  then YACCParser.new
    else raise "Unknown parser #{type}"
    end
  end

  def read_ridiculously_long_xml_file
    ""
  end

  def hash_from_xml(xml)
    {"type" => "ANTLR"}
  end
end

LanguageProcessor.new.parse('some string')

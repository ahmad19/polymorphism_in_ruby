#Decorator interface
class Parser
	def parse
    puts 'The parser class recieved the parse method'	 
	end
end

#Decorator XmlParser
class XmlParser
  def initialize(parser)
    @parser = parser
  end

  def parse
    @parser.parse
    puts 'An instance of XmlParser recieved the parse message'
  end
end

#Decorator JsonParser
class JsonParser
  def initialize(parser)
    @parser = parser
  end

  def parse
    puts 'An instance of JsonParser recieved the parse message'
    @parser.parse
  end
end

puts 'Using the XmlParser'
parser = Parser.new
XmlParser.new(parser).parse

puts 'Using the JsonParser'
JsonParser.new(parser).parse

puts 'Using both'
JsonParser.new(XmlParser.new(parser)).parse
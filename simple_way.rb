class Parser
  def parse(type)
    puts 'The Parser class received the parse method'

    if type == :xml
      puts 'An instance of the XmlParser class received the parse message'
    elsif type == :json
      puts 'An instance of the JsonParser class received the parse message'
    end
  end
end



class Parser
  def parse(parser)
    puts 'The parser received the parse message'
    parser.parse
  end
end

class XmlParser
  def parse
    puts 'An instance of the XmlParser class received the parse message'
  end
end

class JsonParser
  def parse
    puts 'An instance of the JsonParser class received the parse message'
  end
end
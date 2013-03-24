Pair = Struct.new(:token, :word)
class Lexicon
  def initialize
    @lexicon = {
      'north' => 'direction', 'south' => 'direction', 'east' => 'direction', 'west' => 'direction', 'down' => 'direction', 'up' => 'direction',
      'go' => 'verb', 'kill' => 'verb', 'eat' => 'verb', 'stop' => 'verb',
      'the' => 'stop', 'in' => 'stop', 'of' => 'stop', 'from' => 'stop', 'at' => 'stop', 'it' => 'stop',
      'door' => 'noun', 'bear' => 'noun', 'princess' => 'noun', 'cabinet' => 'noun'
    }
  end

  def scan(input)
    words = input.split(' ')
    match_words(words)
  end

  def convert_to_number(string)
    begin
      Integer(string)
    rescue ArgumentError
      return nil
    end
  end

  def match_words(words)
    words.map do |word| 
      if convert_to_number(word)
        token = :number; word = Integer(word)
      elsif @lexicon.key?(word)
        token = @lexicon[word].to_sym
      else
        token = :error
      end
      Pair.new(token, word)
    end
  end

end
class Lexicon
  def initialize
    @lexicon = {
      'north' => 'direction', 'south' => 'direction', 'east' => 'direction', 
      'go' => 'verb', 'kill' => 'verb', 'eat' => 'verb', 
      'the' => 'stop', 'in' => 'stop', 'of' => 'stop',
      'bear' => 'noun', 'princess' => 'noun',
    }
  end

  def scan(input)
    # convert_to_number(input)
    words = input.split
    match_words(words)
  end

  def convert_to_number(string)
    begin
      string.to_i
    rescue ArgumentError
      return nil
    end
  end

  def match_words(words)
    words.map do |word| 
      if convert_to_number(word)
        classification = 'number'
      elsif word != @lexicon[word]
        classification = 'error'
      else
        classification = @lexicon[word].to_sym
      end

      Pair.new(classification, word)
    end
  end

end
Pair = Struct.new(:token, :word)
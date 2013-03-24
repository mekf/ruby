class Lexicon
  def initialize
    @lexicon = {
      directions: "north, south, east, west, down, up, left, right, back",
      verbs: "go, stop, kill, eat",
      stops: "the, in, of, from, at, it",
      nouns: "door, bear, princess, cabinet",
      numbers: "method_check_number"
    }
  end

  def break_words(string)
  end

  def scan(word)
  end

  class Pair
    def initialize(token, word)
      @token = token
      @word = word
    end
  
  end
end
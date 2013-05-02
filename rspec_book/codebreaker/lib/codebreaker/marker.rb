class Marker
  def initialize(secret, guess)
    @secret, @guess = secret, guess
  end

  def exact_match?(index)
    @secret[index] == @guess[index]
  end

  def number_match?(index)
    @secret.include?(@guess[index]) and !exact_match?(index)
  end

  # inject(0) -> initialize 'count' with 0
  # run through 'index', return new 'count'
  # assign 'count' as the start of the next iteration
  def exact_match_count
    (0..3).inject(0) do |count, index|
      count + (exact_match?(index) ? 1 : 0)
    end
  end

  def number_match_count
    total_match_count - exact_match_count
  end

  def total_match_count
    count = 0
    secret = @secret.split('')
    @guess.split('').map do |n|
      if secret.include?(n)
        secret.delete_at(secret.index(n))
        count += 1
      end
    end
    count
  end
end
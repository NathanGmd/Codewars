class CaesarCipher
  def initialize(shift)
    #your code here
    @shift = shift
  end

  def encode(string)
    #your code here
    string.upcase.to_s.strip.tr('A-Z', [*'A'..'Z'].rotate(@shift).join)
  end

  def decode(string)
    #your code here
    string.upcase.to_s.strip.tr('A-Z', [*'A'..'Z'].rotate(-@shift).join)
  end
end

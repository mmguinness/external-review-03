class Spellchecker
  def initialize(string)
    @word_bank = ["word", "water"]
    @string = string
  end

  def highlight
    if @word_bank.include?(@string)
      @string
    else
      "~" + @string + "~"
    end
  end

end
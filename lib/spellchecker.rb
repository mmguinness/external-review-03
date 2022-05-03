class Spellchecker
  def initialize(string)
    @word_bank = ["I", "like", "word", "water"]
    @string = string
    @formatted_string = []
  end

  def format_string
    @string = @string.split(" ")
  end

  def highlight
    format_string
    @string.each do |word|
      if @word_bank.include?(word)
        @formatted_string << word
      else
        @formatted_string << "~" + word + "~"
      end
    end
    return @formatted_string.join(" ")
  end

end
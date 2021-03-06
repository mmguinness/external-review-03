require './lib/spellchecker'

describe Spellchecker do
  describe '#highlight' do
    it 'returns "word" when passed "word"' do
      spellchecker = Spellchecker.new("word")
      expect(spellchecker.highlight).to eq "word"
    end

    it 'returns an in-correctly spelt word wrapped in tildas' do
      spellchecker = Spellchecker.new("wrod")
      expect(spellchecker.highlight).to eq "~wrod~"
    end

    it 'returns "water" when passed "water"' do
      spellchecker = Spellchecker.new("water")
      expect(spellchecker.highlight).to eq "water"
    end

    it 'within a sentence it returns an in-correctly spelt word wrapped in tildas' do
      spellchecker = Spellchecker.new("I like wtaer")
      expect(spellchecker.highlight).to eq "I like ~wtaer~"
    end

    it 'returns an empty string unchanged' do
      spellchecker = Spellchecker.new(" ")
      expect(spellchecker.highlight).to eq " "
    end
  end

end
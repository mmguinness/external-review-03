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
  end
end
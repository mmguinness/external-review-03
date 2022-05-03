require './lib/spellchecker'

describe Spellchecker do
  describe '#highlight' do
    it 'returns any correctly spelt words' do
      spellchecker = Spellchecker.new("word")
      expect(spellchecker.highlight).to eq "word"
    end

    it 'returns an in-correctly spelt word wrapped in tildas' do
      spellchecker = Spellchecker.new("wrod")
      expect(spellchecker.highlight).to eq "~wrod~"
    end

    
  end
end
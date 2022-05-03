require './lib/spellchecker'

describe Spellchecker do
  describe '#highlight' do
    it 'returns any correctly spelt words' do
      spellchecker = Spellchecker.new("word")
      expect(spellchecker.highlight).to eq "word"
    end
  end
end
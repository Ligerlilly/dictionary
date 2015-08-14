require 'rspec'
require 'word'

describe Word do
  before do
    @word = Word.new("Homer")
  end
  describe '#word' do
    it 'returns a string' do
      expect(@word.word).to eq "Homer"
    end
  end

  describe '.all' do
    it 'returns an empty array at first' do
      expect(Word.all).to eq []
    end
  end

  describe '#save' do
    it 'returns an array containing self' do
      expect(@word.save).to eq [@word]
    end
  end


end

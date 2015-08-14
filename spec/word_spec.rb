require 'rspec'
require 'word'

describe Word do
  before do
    Word.clear
    @word = Word.new({ word: "Homer" })
  end
  describe '#word' do
    it 'returns string passed in when variable was initialized' do
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

  describe '.clear' do
    it 'empties @@word_array' do
      expect(Word.clear).to eq []
    end
  end

  describe '.find' do
    it 'finds and returns a word based on id' do
      @word.save
      expect(Word.find(1)).to eq @word
    end
  end


end

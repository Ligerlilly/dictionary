require 'rspec'
require 'definition'

describe Definition do
  before do
    Definition.clear
    @def = Definition.new()
  end

  describe '.all' do
    it 'returns an empty array at first' do
      expect(Definition.all).to eq []
      @def.save
      expect(Definition.all).to eq [@def]
    end
  end

  describe '#save' do
    it 'returns an array containing self' do
      expect(@def.save).to eq [@def]
    end
  end

  describe ".clear" do
    it 'returns empty @@def_array' do
      expect(Definition.clear).to eq []
    end
  end

  describe "#add_def" do
    it "returns an array containing argument" do
      expect(@def.add_def('hi')).to eq ['hi']
      expect(@def.add_def('there')).to eq ['hi', 'there']
    end
  end
end

require 'rspec'
require 'definition'

describe Definition do
  before do
    Definition.clear
    @def = Definition.new({ definition: "Fictional cartoon character" })
  end
  describe '#definition' do
    it 'returns string object was initialized with' do
      expect(@def.definition).to eq "Fictional cartoon character"
    end
  end

  describe '.all' do
    it 'returns an empty array at first' do
      expect(Definition.all).to eq []
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
end

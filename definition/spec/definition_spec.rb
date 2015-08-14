require 'rspec'
require 'definition'

describe Definition do
  before do
    @def = Definition.new("Fictional cartoon character")
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
end

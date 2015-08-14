require 'rspec'
require 'definition'

describe Definition do
  before do
    @def = Definition.new("Fictional cartoon character")
  end
  describe '#definition' do
    it 'does some stuff' do
      expect(@def.definition).to eq "Fictional cartoon character"
    end
  end
end

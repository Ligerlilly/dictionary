class Definition
  attr_accessor :id, :definitions
  @@def_array = []
  def initialize
    @definitions = []
    @id = @@def_array.length + 1
  end

  def self.all
    @@def_array
  end

  def save
    @@def_array.push(self)
  end

  def self.clear
    @@def_array = []
  end

  def add_def(definition)
    definitions.push(definition)
  end

  def self.find(id)
    found_def = nil
    @@def_array.each do |definition|
      if id == definition.id
        found_def = definition
      end
    end
    found_def
  end


end

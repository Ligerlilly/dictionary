class Definition
  attr_accessor :definition
  @@def_array = []
  def initialize(definition)
    @definition = definition
    @id = @@def_array.length + 1
  end

  def self.all
    @@def_array 
  end

end

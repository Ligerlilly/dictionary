class Definition
  attr_accessor :definition
  @@def_array = []
  def initialize(attributes)
    @definition = attributes[:definition]
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
end

class Word
  attr_accessor :word
  @@word_array = []
  def initialize(attributes)
    @word = attributes['word']
    @id = @@word_array.length + 1
  end

  def self.all
    @@word_array
  end

  def save
    @@word_array.push(self)
  end

  def self.clear
    @@word_array = []
  end
end

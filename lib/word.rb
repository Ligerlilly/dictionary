class Word
  attr_accessor :word
  @@word_array = []
  def initialize(word)
    @word = word
    @id = @@word_array.length + 1
  end

  def self.all
    @@word_array
  end
end

class Word
  attr_accessor :word, :id
  @@word_array = []
  def initialize(attributes)
    @word = attributes[:word]
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

  def self.find(id)
    found_word = nil
    @@word_array.each do |word|
      if id == word.id
        found_word = word
      end
    end
    found_word 
  end
end

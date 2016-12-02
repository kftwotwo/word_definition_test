class Word
  attr_reader(:name)

  @@words = []
  def initialize(attributes)
    @name = attributes[:name]
  end

  def add
    @@words.push(self)
  end

  define_singleton_method(:clear) do
    @@words = []
  end

  define_singleton_method(:all) do
    @@words
  end

end

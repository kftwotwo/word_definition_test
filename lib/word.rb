class Word
  attr_reader(:name, :id)

  @@words = []
  def initialize(attributes)
    @name = attributes[:name]
    @id = @@words.length + 1
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

class Word
  attr_reader(:name, :id, :part)

  @@words = []
  def initialize(attributes)
    @name = attributes[:name]
    @id = @@words.length + 1
    @part = attributes[:part]
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

  define_singleton_method(:find) do |id|
    found = nil
    @@words.each do |word|
      if word.id() == id
        found = word.id()
      end
    end
    found
  end

  define_singleton_method(:search) do |search_word|
    result = nil
    @@words.each do |word|
      if word.name == search_word
        result = word
      end
    end
    result
  end

end

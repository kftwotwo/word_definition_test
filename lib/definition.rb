class Definition
  attr_reader(:description)

  @@definitions = []

  def initialize(attributes)
    @description = attributes[:description]
  end

  define_singleton_method(:clear) do
    @@definitions = []
  end

  def add
    @@definitions.push(self)
  end

  define_singleton_method(:all) do
    @@definitions
  end
end

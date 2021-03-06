class Definition
  attr_reader(:description, :id)

  @@definitions = []

  def initialize(attributes)
    @description = attributes[:description]
    @id = @@definitions.length + 1
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

  define_singleton_method(:find) do |id|
    found = nil
    @@definitions.each do |definition|
      if definition.id() == id
        found = definition
      end
    end
    found
  end
end

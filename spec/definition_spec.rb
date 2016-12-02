require("rspec")
require("./lib/definition")

describe(Definition) do
  before :each do
    Definition.clear()
  end

  describe('#description') do
    it "will return description" do
      definition = Definition.new(:description => 'this is a sentance.')
      expect(definition.description()).to(eq('this is a sentance.'))
    end

    it "will give a description and id and return id" do
      definition = Definition.new(:description => 'this is a sentance.')
      definition.add()
      expect(definition.id()).to(eq(1))
    end
  end

  describe('.clear') do
    it "will return an empty array" do
      expect(Definition.clear()).to(eq([]))
    end
  end

  describe('#add') do
    it "will add description to definitions" do
      definition = Definition.new(:description => 'this is a sentance.')
      expect(definition.add()).to(eq([definition]))
    end
  end

  describe('.all') do
    it "will show definitions array" do
      definition = Definition.new(:description => 'this is a sentance.')
      definition.add()
      definition2 = Definition.new(:description => 'this is number 2 sentance.')
      definition2.add()
      expect(Definition.all()).to(eq([definition, definition2]))
    end
  end

  describe('.find') do
    it "will find by id" do
      definition = Definition.new(:description => 'this is a sentance.')
      definition.add()
      definition2 = Definition.new(:description => 'this is number 2 sentance.')
      definition2.add()
      definition3 = Definition.new(:description => 'this is number 3 sentance.')
      definition3.add()
      expect(Definition.find(3)).to(eq(3))
    end
  end
end

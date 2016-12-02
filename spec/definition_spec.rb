require("rspec")
require("./lib/definition")

describe(Definition) do
  describe('#description') do
    it "will return description" do
      definition = Definition.new(:description => 'this is a sentance.')
      expect(definition.description()).to(eq('this is a sentance.'))
    end
  end
end

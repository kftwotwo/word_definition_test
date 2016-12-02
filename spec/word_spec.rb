require('rspec')
require('./lib/word')

describe(Word) do
  describe('#name') do
    it "will return name" do
      word = Word.new(:name => 'Computer')
      expect(word.name()).to(eq('Computer'))
    end
  end

end

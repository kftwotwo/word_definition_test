require('rspec')
require('./lib/word')

describe(Word) do
  describe('#name') do
    it "will return name" do
      word = Word.new(:name => 'Computer')
      expect(word.name()).to(eq('Computer'))
    end
  end

  describe('.clear') do
    it "will clear out the array" do
      expect(Word.clear()).to(eq([]))
    end
  end

  # describe('#add') do
  #   it "will add word to an array" do
  #     word = Word.new(:name => 'Computer')
  #     word.add()
  #     expect(word.add()).to(eq([word]))
  #   end
  # end


end

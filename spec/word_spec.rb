require('rspec')
require('./lib/word')

describe(Word) do

  before :each do
    Word.clear
  end

  describe('#initialize') do
    it "will return name" do
      word = Word.new(:name => 'Computer')
      expect(word.name()).to(eq('Computer'))
    end

    it "will return id for word" do
      word = Word.new(:name => 'Computer')
      word.add()
      expect(word.id()).to(eq(1))
    end
  end

  describe('.clear') do
    it "will clear out the array" do
      word = Word.new(:name => 'Dog')
      word.add()
      expect(Word.clear()).to(eq([]))
    end
  end

  describe('#add') do
    it "will add word to an array" do
      word = Word.new(:name => 'Dog')
      expect(word.add()).to(eq([word]))
    end
  end

  describe('#all') do
    it "will show array of words" do
      word = Word.new(:name => 'Dog')
      word.add()
      word2 = Word.new(:name => 'Cat')
      word2.add()
      expect(Word.all()).to(eq([word, word2]))
    end
  end


end

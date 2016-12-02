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

    it "will return part of speech for word" do
      word = Word.new(:part => 'Computer', :part => "subject")
      word.add()
      expect(word.part()).to(eq("subject"))
    end

    it "will return an empty array" do
      word = Word.new(:part => 'Computer')
      word.add()
      expect(word.definitions()).to(be_an(Array))
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

  describe('.all') do
    it "will show array of words" do
      word = Word.new(:name => 'Dog')
      word.add()
      word2 = Word.new(:name => 'Cat')
      word2.add()
      expect(Word.all()).to(eq([word, word2]))
    end
  end

  describe('.find') do
    it "will find word by id" do
      word = Word.new(:name => 'Dog')
      word.add()
      word2 = Word.new(:name => 'Cat')
      word2.add()
      expect(Word.find(1)).to(eq(1))
    end
  end

  describe('.search') do
    it "will search word and return word" do
      dog = Word.new(:name => 'Dog')
      dog.add()
      cat = Word.new(:name => 'Cat')
      cat.add()
      expect(Word.search('Dog')).to(eq(dog))
    end
  end

  describe('#add_definition') do
    it "will add definition" do
      word = Word.new(:name => 'Dog')
      expect(word.add_definition('this is a sentence')).to(eq(['this is a sentence']))
    end
  end

end

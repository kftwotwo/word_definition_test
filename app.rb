require('sinatra')
require('./lib/word')
require('./lib/definition')
require('pry')

get('/') do
  erb(:index)
end

get('/words/new') do
    erb(:new_word)
end

get('/words') do
  @words = Word.all()
  erb(:words)
end

post('/words') do
  word = Word.new(:name => params[:name])
  word.add()
  erb(:success)
end

get('/words/:id') do
  @word = Word.find(params[:id].to_i())
  @definitions = @word.definitions()
  erb(:definition)
end

get('/words/:id/definitions/new') do
  @word = Word.find(params[:id].to_i())
  erb(:new_definition)
end

post('/words/:id/definitions') do
  word = Word.find(params[:id].to_i())
  definition = Definition.new(:description => params[:description])
  definition.add()
  word.add_definition(definition)
  erb(:success)
end

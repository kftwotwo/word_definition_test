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

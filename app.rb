require 'sinatra'
require 'sinatra/reloader'
require './lib/word'
require './definition/lib/definition'

get('/') do

	erb :index
end

get '/word_form' do
  erb :word_form
end

post '/add_word' do
	@word = Word.new({ word: params['word'] })
	@def = Definition.new
	@word.save
	@def.save
  redirect '/'
end

get '/word/:id/def' do
	@word = Word.find(params['id'].to_i)
	@def = Definition.find(params['id'].to_i)
  erb :defs
end

get '/word/:id/def_form' do
	@word = Word.find(params["id"].to_i)
  erb :def_form
end

post '/add_def' do
	@def = Definition.find(params['word'].to_i)
	@word = Word.find(params['word'].to_i)
	@def.add_def(params['def'])

	redirect "/word/#{@word.id}/def"
end

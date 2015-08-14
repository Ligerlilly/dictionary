require 'sinatra'
require 'sinatra/reloader'
require './lib/word'
require './definition/lib/definition'

get('/') do

	erb :index
end

get '/add_word' do
  erb :word_form
end

post '/add_word_form' do
	@word = Word.new({ word: params['word'] })
	@word.save
  redirect '/'
end

get '/word/:id/def' do
	@word = Word.find(params['id'].to_i)
  erb :defs
end

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

get '/word_def' do
  erb :def_form
end

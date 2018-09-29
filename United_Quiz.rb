require 'sinatra/base'
require './lib/level'

class Quiz < Sinatra::Base
  enable :sessions
  get '/' do
    erb :homepage
  end

  post '/level' do
    session[:level] = Level.new(params[:level])
    redirect '/start'
  end

  get '/start' do
    @question_number = 0
    @level = session[:level]
    @level.load(@question_number)
    erb :choice
  end

  post '/answer' do
    p params
    @question_number = 0
    @level = session[:level]
    @level.load(@question_number)
    if params[:answer] == @level.result['correct']
      redirect '/correct'
    else
      redirect '/incorrect'
    end
  end

  get '/correct' do
    @correct = ["Correct!", "Your right!", "Well Done!", "Super!"].sample
    erb :correct
  end

  get '/incorrect' do
    @incorrect = ["Wrong!", "Unlucky!", "Try Again!", "Too Bad!"].sample
    erb :incorrect
  end

  run! if app_file == $0
end

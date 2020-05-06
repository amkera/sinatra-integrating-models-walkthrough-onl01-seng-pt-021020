require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end
  #This renfers the index.reb page

  post '/' do
    text_from_user = params[:user_text]

    erb :results
  end
  #This receives the form data through the params hash, and renders the results page. 
end

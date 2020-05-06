require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'
#This now gives us the ability to reference the TextAnalyzer model / class and invoke its .new method.

class App < Sinatra::Base
  get '/' do
    erb :index
  end
  #This renders the index.reb page



  post '/' do
    text_from_user = params[:user_text]
    #this needs to be fed into a new instance of the Text Analyzer class. 
    @analyzed_text = TextAnalyzer.new(text_from_user)
    erb :results
  end
  
  
  
  
  #This receives the form data through the params hash, and renders the results page. 
end

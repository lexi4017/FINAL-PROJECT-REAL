class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get '/' do
  	erb :index
  end

  post '/' do
    reset_results
    scoring(params[:question1])
    scoring(params[:question2])
    scoring(params[:question3])
    scoring(params[:question4])
    scoring(params[:question5])
    scoring(params[:question6])
    scoring(params[:question7])
    scoring(params[:question8])
    scoring(params[:question9])
    @the_real_result = result_selector
    erb :results
  end

end


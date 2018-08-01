class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get '/' do
  	erb :index
  end
  
  post '/' do
    @my_results = Questions(params[:question1, :question2, :question3, :question4, :question5, :question6, :question7, :question8])
      
      erb :results
  end
  
  # get "/results" do
  # 	erb :results
  # end
  
end

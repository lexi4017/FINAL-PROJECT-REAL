class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get '/' do
  	erb :index
  end
  
  post '/' do
    scoring(params[:question1])
      
    
      erb :results
  end
  
  # get "/results" do
  # 	erb :results
  # end
  
end

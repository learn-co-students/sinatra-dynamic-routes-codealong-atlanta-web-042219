require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get "/goodbye/:blah" do
    @user_name = params[:blah]
    "Goodbye, #{@user_name}."
  end

  get "/multiply/:num/:num1" do
    x= params[:num].to_f * params[:num1].to_f
    "You have number: #{x}"
  end

end
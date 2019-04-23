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

  get "/goodbye/:name" do
    @username = params[:name]
    "Goodbye #{username}"
    status 200
  end

  get "multiply/:num1/:num2" do
    num = params[:num1] * params[:num2]
    "#{num}"
    status 200
  end

  # Code your final two routes here:

end

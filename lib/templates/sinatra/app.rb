require 'sinatra'

class App < Sinatra::Base

  set :root, File.dirname(__FILE__)
  set :public_folder, Proc.new { File.join(root, "assets") }
  set :run, true
  set :port, 5000

  get '/' do
    erb :index
  end

end

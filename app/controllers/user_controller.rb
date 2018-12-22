class UserController < ApplicationController
  get '/signup' do
    erb :'/users/signup'
  end

  post '/users' do
    user = User.new(params)
    if !User.find_by(username: params[:username]) && user.save
      redirect '/medications/index'
    else
      redirect '/signup'
    end
  end
end
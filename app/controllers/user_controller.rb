class UserController < ApplicationController
  get '/signup' do
    erb :'/users/signup'
  end

  post '/signup' do
    user = User.new(params)
    if !User.find_by(username: params[:username]) && user.save
      redirect '/medications/index'
    else
      redirect '/signup'
    end
  end

  get '/login' do
    erb :'/users/login'
  end

  post '/login' do
    user = User.find_by(username: params[:username])

    if user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect '/medications/index'
    else
      redirect '/login'
    end
  end

  get '/logout' do
    if logged_in?
      session.clear
      redirect '/'
    else
      redirect '/'
    end
  end

end
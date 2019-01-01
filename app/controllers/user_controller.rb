class UserController < ApplicationController
  get '/signup' do
    erb :'/users/signup'
  end

  post '/signup' do
    user = User.new(params)
    if !User.find_by(username: params[:username]) && user.save
      session[:user_id] = user.id
      redirect '/medications/index'
    else
      flash[:error] = "Please use a valid username and password."
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
      flash[:error] = "Please check your username and password and try again."
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
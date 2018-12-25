class MedicationController < ApplicationController
  get '/medications/index' do
    if logged_in?
      @user = current_user
      
      erb :'/medications/index'
    else
      redirect '/login'
    end
  end

  get '/medications/new' do
    if logged_in?
      erb :'/medications/new'
    else
      redirect '/login'
    end
  end
end
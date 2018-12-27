class MedicationController < ApplicationController
  get '/medications/index' do
    if logged_in?
      @user = current_user
      
      erb :'/medications/index'
    else
      redirect '/'
    end
  end

  get '/medications/new' do
    if logged_in?
      erb :'/medications/new'
    else
      redirect '/'
    end
  end

  post '/medications' do
    if !params[:name].empty? && !params[:dose].empty? && !params[:refill_date].empty? && !params[:notes].empty?
      med = current_user.medications.create(params)

      redirect "/medications/#{med.id}"
    else
      redirect '/medications/new'
    end
  end
end
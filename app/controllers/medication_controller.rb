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

  get '/medications/:id' do
    if logged_in? && Medication.find(params[:id]).user == current_user
      @medication = Medication.find(params[:id])
      erb :'/medications/show'
    else
      redirect '/'
    end
  end

  get '/medications/:id/edit' do
    if logged_in? && Medication.find(params[:id]).user == current_user
      @medication = Medication.find(params[:id])
      erb :'/medications/edit'
    else
      redirect '/'
    end
  end

  patch '/medications/:id' do
    if logged_in? && Medication.find(params[:id]).user == current_user
      med = Medication.find(params[:id])
      if params[:medication][:name].empty? || params[:medication][:dose].empty? || params[:medication][:refill_date].empty? || params[:medication][:notes].empty?
        redirect "/medications/#{med.id}/edit"
      end
      med.update(params[:medication])
      redirect "/medications/#{med.id}"
    else
      redirect '/'
    end
  end

  delete '/medications/:id' do
    if logged_in? && Medication.find(params[:id]).user == current_user
      Medication.find(params[:id]).delete
      redirect '/medications/index'
    else
      redirect '/'
    end
  end
end
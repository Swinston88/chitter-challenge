class Chitter < Sinatra::Base
  get '/users/new' do
    erb :'users/new'
  end

  post '/users' do
    user =User.create(username: params[:username], first_name: params[:first_name],
      last_name: params[:last_name], email: params[:email], password: params[:password],
      password_confirmation: params[:password_confirmation])
    session[:user_id] = user.id
    redirect '/peeps'
  end
end

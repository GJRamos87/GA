Rails.application.routes.draw do
  get '/users' => 'users#all'
end

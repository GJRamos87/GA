Rails.application.routes.draw do
  get '/companies' => 'companies#index'
  get '/companies/search' => 'companies#search'
  resources:photos
end

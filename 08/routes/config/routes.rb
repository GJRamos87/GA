Rails.application.routes.draw do
  get '/hello' => 'polite#index'
  get '/bienvenidos' => 'polite#index'

  get '/all_shoes' => 'shoes#index'
  get '/dogs' => 'dogs#index'
  get '/test' => 'test#index'
end

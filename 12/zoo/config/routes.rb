# Rails.application.routes.draw do
#   # root to: 'animals#index'
#   resources :animals
# end



Rails.application.routes.draw do
  resources :images
  
  resources :products do
    resources :comments
  end
end
Rails.application.routes.draw do
  root 'ratings#index'
  resources :ratings

end

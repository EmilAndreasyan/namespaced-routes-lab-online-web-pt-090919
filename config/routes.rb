Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs
  
  namespace :preferences do
    resources only: [:new]
  end

end

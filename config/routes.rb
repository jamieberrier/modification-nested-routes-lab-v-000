Rails.application.routes.draw do
  # Using nested resources, set up routes and controller actions to create new song records through an artist
  resources :artists do
    resources :songs, only: [:index, :show, :new, :edit]
  end
  resources :songs do
    resources :artists, only: [:edit]
  end
end

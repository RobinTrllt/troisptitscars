Rails.application.routes.draw do
  root to: 'pages#home'

  resources :playlists
  resources :songs, only: %i[index show] do
    resources :playlist_songs, only: %i[new create]
  end
  resources :playlist_songs, only: %i[destroy]
end

Rails.application.routes.draw do
  resource :rooms, only: :create
  resource :users, only: [:create]
  resources :chats, only: [:index, :create]
end

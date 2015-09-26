Rails.application.routes.draw do
  resource :rooms, only: :create
  resource :users, only: :create
  resource :chats, only: :create
end

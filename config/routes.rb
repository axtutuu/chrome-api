Rails.application.routes.draw do
  resource :rooms, only: :create
  resource :users, only: :create
end

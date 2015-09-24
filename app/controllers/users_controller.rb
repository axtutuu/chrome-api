class UsersController < ApplicationController
  def create
    user = User.find_or_initialize_by(name: params[:name])
    unless user.save
      # TODO: エラー処理
    end
  end
end

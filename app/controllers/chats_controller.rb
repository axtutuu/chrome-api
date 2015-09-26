class ChatsController < ApplicationController
  def create
    chat = Chat.new(chat_params)
    unless chat.save
      # TODO: エラー処理
    end
  end

  private
  def chat_params
    params.permit(:user_id, :room_id, :message)
  end
end

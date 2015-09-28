class ChatsController < ApplicationController
  def index
    count = Chat.where(room_id: params[:room_id]).count - 10
    @chats = Chat.where(room_id: params[:room_id]).offset(count)
  end

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

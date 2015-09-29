class ChatsController < ApplicationController
  def index
    chats = Chat.where(room_id: params[:room_id]).order('id DESC').limit(10)
    @chats = chats.sort
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

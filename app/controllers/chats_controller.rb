class ChatsController < ApplicationController
  def index
    @chats = Chat.where(room_id: params[:room_id]).limit(10).order("created_at DESC")
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

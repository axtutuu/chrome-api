class RoomsController < ApplicationController
  def create
    room = Room.find_or_initialize_by(name: params[:name])
    unless room.save
      # TODO: エラー処理
    end
  end
end

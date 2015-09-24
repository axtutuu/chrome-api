class User < ActiveRecord::Base
  belongs_to :room
  has_many   :chats
end

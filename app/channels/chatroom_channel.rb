class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chatroom"
  end

  def receive(data)
    p 'COCONUT'
    p data
    ActionCable.server.broadcast("chatroom", data)
  end
end

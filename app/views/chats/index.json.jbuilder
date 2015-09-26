json.set! :results do
  json.array! @chats do |chat|
    json.message chat.message
    json.name chat.user.name
  end
end

require 'dotenv'
require 'telegram/bot'
Dotenv.load
token = ENV["TOKEN"]
puts "Server is running!"
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/asTelegram'
      bot.api.send_message(chat_id: message.chat.id, text: "Welcome the BBC www.bbc.co.uk")
    when '/Alwin'
      bot.api.send_message(chat_id: message.chat.id, text: "Howdy Alwin!")
    end
  end
end

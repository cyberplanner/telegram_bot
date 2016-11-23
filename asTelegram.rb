require 'dotenv'
require 'telegram/bot'
Dotenv.load
token = ENV["TOKEN"]
puts "Server is running!"
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
     bot.api.send_message(chat_id: message.chat.id, text: "I am the SitePoint bot, My commands are /tutorial, /asTelegram, /Alwin and /map")
    when '/asTelegram'
      bot.api.send_message(chat_id: message.chat.id, text: "Welcome the BBC www.bbc.co.uk")
    when '/Alwin'
      bot.api.send_message(chat_id: message.chat.id, text: "Howdy Alwin!")
    when '/tutorial'
     bot.api.send_message(chat_id: message.chat.id, text: "Hi, this is the tutorial used to create this bot: https://www.sitepoint.com/quickly-create-a-telegram-bot-in-ruby")
    when '/map'
     bot.api.send_location(chat_id: message.chat.id, latitude: 51.272410, longitude: 0.190898)
    end
  end
end

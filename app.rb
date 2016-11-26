require 'telegram/bot'

def run
  token = <token>
  puts "Server is running!"
  Telegram::Bot::Client.run(token) do |bot|
    bot.listen do |message|
      case message.text
      when '/start'
        bot.api.send_message(chat_id: message.chat.id, text: "Welcome")
      when 'hi', 'hey'
        bot.api.send_message(chat_id: message.chat.id, text: "What ingredients do you want to use?")
      when '/end'
       bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}!")
      else
       bot.api.send_message(chat_id: message.chat.id, text: "#{message.text} stew http://www.bigoven.com/recipes/#{join_words(message.text)}/best")
      end
    end
  end
end


def join_words(input)
  input.split(' ').join('&')
end

run

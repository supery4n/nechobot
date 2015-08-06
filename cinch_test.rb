require 'cinch'

bot = Cinch::Bot.new do
  configure do |c|
    c.server   = "irc.twitch.tv"
    c.port     = "6667"
    c.nick     = "nechobot"
    c.password = ''
    c.channels = ["#super_yan", "#nechobot"]
    c.user     = "nechobot"
  end

  on :message, "hello" do |m|
    m.reply "Hello there, #{m.user.nick}"
  end

  on :message, /dice/ do |m|
    m.reply "You rolled a #{rand(1...6)}!"
  end
end

bot.start

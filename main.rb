
require 'bundler/setup'

::RBNACL_LIBSODIUM_GEM_LIB_PATH="#{File.dirname(__FILE__)}/lib/libsodium.so"

require 'dotenv'
Dotenv.load

require 'discordrb'
bot = Discordrb::Commands::CommandBot.new token: ENV['TOKEN'], application_id: ENV['APPID'], prefix: '!', advanced_functionality: false, debug: true #, log_mode: :debug

dir = File.dirname(__FILE__)

bot.command :join do |event|
  # Joins the user in it's voice channel
  bot.voice_connect(event.author.voice_channel)
  'Bot joined Voice Channel'
end

bot.command :play do |event|
  raise 'Not connected to a channel' unless event.voice
  event.voice.play_file("#{dir}/ready.mp3")
end

bot.run

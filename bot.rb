# -*- coding: utf-8 -*-

require 'user_stream'

UserStream.configure do |config|
  config.consumer_key = ENV['TWITTER_CONSUMER_KEY']
  config.consumer_secret = ENV['TWITTER_CONSUMER_SECRET']
  config.oauth_token = ENV['TWITTER_OAUTH_TOKEN']
  config.oauth_token_secret = ENV['TWITTER_OAUTH_TOKEN_SECRET']
end
UserStream.client.user do |status|
  STDERR.puts status.inspect
end

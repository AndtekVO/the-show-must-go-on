class Interaction < ApplicationRecord
  belongs_to :session
  has_many :meanings
  
  def self.get_tweets
    #TODO: Put security here
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "ufEMJNewAANeXbHZKnOM9wJWE"
      config.consumer_secret     = "dQEWe5hFWwInFCQ0PkNB8lE6nKmjOR38CVwKHBccjGM9Udhq2R"
      config.access_token        = "998923968785600513-8Ae7kstP9lHxotGw6mdSBqmIj2CypZ7"
      config.access_token_secret = "BRoKlJV6KVplbKNxVuX2mtVFr6D47jtUNXmTs48VOhHdq"
    end    
    result = []
    client.search("#AndtekVO", result_type: "recent").collect do |tweet|
      result << {"@#{tweet.user.screen_name}": "#{tweet.text}"}
    end
    result
  end
end

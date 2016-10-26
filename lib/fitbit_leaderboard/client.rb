require 'net/http'
require 'json'

module FitbitLeaderboard
  class Client
    attr_reader :token

    def initialize(token)
      @token = token
    end

    def aggregate_friends_steps
      uri = URI("https://api.fitbit.com/1/user/-/friends/leaderboard.json")

      request = Net::HTTP::Get.new(uri)
      request['Authorization'] = "Bearer #{token}"

      response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) do |http|
        http.request(request)
      end

      data = JSON.parse(response.body)

      total = 0
      data['friends'].each { |friend| total += friend['lifetime']['steps'] }
      total
    end
  end
end

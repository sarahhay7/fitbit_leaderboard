require 'spec_helper'

module FitbitLeaderboard
  describe Client do

    it 'can return your #aggregate_friends_steps' do
      VCR.use_cassette('leaderboard') do
        leaderboard = Client.new("token")
        expect(leaderboard.aggregate_friends_steps).to eq(4540740)
      end
    end
  end
end

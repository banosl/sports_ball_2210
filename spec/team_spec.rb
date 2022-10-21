require './lib/player'
require './lib/team'

RSpec.describe Team do
    it 'team exists' do
        team = Team.new("Dodgers", "Los Angeles")

        expect(team).to be_instance_of(Team)
    end

    it 'team roster is empty' do
        team = Team.new("Dodgers", "Los Angeles")

        expect(team.roster).to eq([])
    end

    it 'team player count is 0' do
        team = Team.new("Dodgers", "Los Angeles")

        expect(team.player_count).to eq(0)
    end

    it 'team roster includes two players' do
        team = Team.new("Dodgers", "Los Angeles")

        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez" , 500000, 24)

        team.add_player(player_1)
        team.add_player(player_2)
require 'pry'; binding.pry
        expect(team.roster).to eq([player_1, player_2])
        expect(team.player_count).to eq(2)
    end
end
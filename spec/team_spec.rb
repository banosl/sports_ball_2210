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

        expect(team.roster).to eq([player_1, player_2])
        expect(team.player_count).to eq(2)
    end

    it 'checks which players are long term and which are short term' do
        team = Team.new("Dodgers", "Los Angeles")

        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez" , 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48)
        player_4 = Player.new("Hamilton Porter", 100000, 12)

        team.add_player(player_1)
        team.add_player(player_2)
        team.add_player(player_3)
        team.add_player(player_4)

        expect(team.long_term_players).to eq([player_1, player_3])
        expect(team.short_term_players).to eq([player_2, player_4])
    end

    it 'checks team total value' do
        team = Team.new("Dodgers", "Los Angeles")

        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez" , 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48)
        player_4 = Player.new("Hamilton Porter", 100000, 12)

        team.add_player(player_1)
        team.add_player(player_2)
        team.add_player(player_3)
        team.add_player(player_4)

        expect(team.total_value).to eq(85200000)
    end

    it 'details shows the total value and player count' do
        team = Team.new("Dodgers", "Los Angeles")

        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez" , 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48)
        player_4 = Player.new("Hamilton Porter", 100000, 12)

        team.add_player(player_1)
        team.add_player(player_2)
        team.add_player(player_3)
        team.add_player(player_4)
require 'pry'; binding.pry
        expect(team.details).to eq({"total_value" => 85200000, "player_count" => 4})
    end
end
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

    

end
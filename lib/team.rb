class Team
    attr_reader :team_name,
                :team_home,
                :roster,
                :player_count

    def initialize (team_name, team_home)
        @team_name = team_name
        @team_home = team_home
        @roster = []
        @player_count = @roster.count
    end

    def add_player(new_player)
        @roster << new_player
    end

end
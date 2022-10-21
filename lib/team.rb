class Team
    attr_reader :team_name,
                :team_home,
                :roster

    def initialize (team_name, team_home)
        @team_name = team_name
        @team_home = team_home
        @roster = []
    end

    def add_player(new_player)
        @roster << new_player
    end

    def player_count
        @roster.count
    end

end
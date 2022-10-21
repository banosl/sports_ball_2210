class Team
    attr_reader :team_name,
                :team_home,
                :roster

    def initialize (team_name, team_home)
        @team_name = team_name
        @team_home = team_home
        @roster = []
    end
end
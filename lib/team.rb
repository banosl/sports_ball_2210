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

    def long_term_players
        long_term = []
        @roster.each do|player|
         
        long_term << player if player.contract_length > 24
        end
        long_term
    end

    def short_term_players
        short_term = []
        @roster.each do|player|

        short_term << player if player.contract_length <= 24
        end
        short_term
    end

    def total_value
        value = []

        @roster.map do|player|
           value << player.total_cost
        end
        
        value.sum
    end

    def details
        value_and_players = {"total_value" => total_value, "player_count" => player_count}
    end
end
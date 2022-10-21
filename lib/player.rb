class Player
    attr_reader :name,
                :monthly_cost,
                :contract_length

    def initialize (name, monthly_cost, contract_length)
        @name = name
        @monthly_cost = monthly_cost
        @contract_length = contract_length
    end

    def first_name
        first = name.split(" ")
        first[0]
    end

    def last_name
        last = name.split(" ")
        last[1]
    end

    def total_cost
        total = @monthly_cost * @contract_length
    end

end
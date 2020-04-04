class VentureCapitalist
    attr_accessor :name, :total_worth
    @@all = []

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        self.all.select { |venture_capitalist| venture_capitalist.total_worth > 1000000000 }
    end

    def offer_contract(startup, type, investment)
        FundingRound.new(startup, self, type, investment)
    end

    def funding_rounds
        FundingRound.all.select { |funding_round| funding_round.venture_capitalist == self }
    end

    def portfolio
        self.funding_rounds.map { |funding_round| funding_round.startup }.uniq
    end

    def biggest_investment
        investments = self.funding_rounds.max { |funding_round1, funding_round2| funding_round1.investment <=> funding_round2.investment }
    end

    def invested(domain)
        frs = funding_rounds.select { |funding_round| funding_round.startup.domain == domain }
        frs.map { |funding_round| funding_round.investment }.reduce(:+)
    end
end

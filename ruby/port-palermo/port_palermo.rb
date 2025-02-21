module Port
  IDENTIFIER = :PALE
  TERMINAL_A_FUELS = %w[OIL GAS].freeze

  def self.get_identifier(city)
    city[0,4].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    data = ship_identifier.to_s.match /(?<cargo>\w{3})(?<id>\d{3})/

    TERMINAL_A_FUELS.include?(data[:cargo]) ? :A : :B
  end
end

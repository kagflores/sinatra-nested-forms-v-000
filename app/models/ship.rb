class Ship
  attr_reader :name, :type, :booty

  @@ships = []

  def initialize(info)
    @name = info[:name]
    @type = info[:type]
    @booty = info[:booty]
    @@ships << self
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships.clear
  end
end

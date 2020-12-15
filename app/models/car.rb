class Car

  attr_reader :make, :model
  attr_accessor :car_owner, :mechanic, :classification
  @@all = []

  def self.all 
    @@all
  end

  def initialize(make,model,classification,car_owner,mechanic)
    @make = make
    @model = model
    @car_owner = car_owner
    @mechanic = mechanic
    @classification = classification
    @@all << self
  end

  def self.classifications
    self.all.map{|car| car.classification }.uniq
  end

  def self.find_mechanics(classification)
    Mechanic.all.select {|mechanic| mechanic.specialty == classification}
  end

end

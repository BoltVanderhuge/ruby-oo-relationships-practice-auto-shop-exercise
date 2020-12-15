class Mechanic

  attr_reader :name, :specialty
  @@all = []

  def self.all 
    @@all
  end

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def cars
    Car.all.select {|car| car.mechanic == self}
  end

  def car_owners
    cars.map {|car| car.car_owner}.uniq
  end

  def car_owner_names
    car_owners.map {|owner|owner.name}
  end

end

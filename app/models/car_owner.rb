class CarOwner

  attr_reader :name
  @@all = []

  def self.all 
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def cars
    Car.all.select {|car| car.car_owner == self}
  end

  def mechanics
    self.cars.map {|car| car.mechanic}.uniq
  end

  def self.average_number_of_cars
    Car.all.count.to_f / self.all.count.to_f
  end


end

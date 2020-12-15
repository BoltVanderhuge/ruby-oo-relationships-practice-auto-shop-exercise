require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

joe = CarOwner.new("joe")
bob = CarOwner.new("bob")

fixit = Mechanic.new("Mr. Fixit", "antique")
wreckit = Mechanic.new("Ralphs", "clunker")
fancy = Mechanic.new("Mr. Fancies", "exotic")


camaro = Car.new("chevy","camaro","antique",joe, fixit)
gremlin = Car.new("amc","gremlin","clunker",joe, wreckit)
chiron = Car.new("bugatti","chiron","exotic",joe, fancy)
windstar = Car.new("ford","windstar","clunker",bob, wreckit)
madeup = Car.new("bs","madeup","clunker",joe, wreckit)

binding.pry

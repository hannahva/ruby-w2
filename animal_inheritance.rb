module Flight
  def fly
    puts "i'm a #{self.class.name}, i'm flying!"
  end
end

class Animal
  attr_reader :spine

  def initialize
    @spine = true
  end
end

class Mammal < Animal
  attr_reader :live_young

  def initialize
     super
     @live_young = true
  end
end

class Amphibian < Animal
  def semi_aquatic?
    puts "i spend half my life in the water"
  end
end

class Bird < Animal
  include Flight

  def wings?
    puts "wings make me different"
  end
end

class Primate < Mammal
  def closest_relative?
    puts "humans are the closest cousin to me"
  end
end

class Bat < Mammal
  include Flight

  def also_wings
    puts "i have wings like a bird, but i am not a bird"
  end
end

class Frog < Amphibian
end

class Parrot < Bird
end

class Chimpanzee < Primate
end

# puts Frog.new.semi_aquatic?
# puts Bat.new.warm_blooded
# puts Bat.new.also_wings
# puts Parrot.new.wings?
# puts Primate.new.closest_relative?
# puts Primate.new.spine
# puts Primate.new.warm_blooded
puts Animal.new.inspect
puts Parrot.new.fly
puts Bat.new.fly
puts Chimpanzee.new.inspect
puts Amphibian.new.inspect
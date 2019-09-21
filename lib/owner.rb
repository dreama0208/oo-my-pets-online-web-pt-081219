class Owner
  # code goes here
  attr_accessor :name
  attr_writer :species
  @@all = []

  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
  end

  def say_species
    print "I am a human."
  end

  def cat
    Cat.all.collect {|cat| cat.owner == self}
  end

  def buy_cat(cat_name)
    if cat = Cat.all.detect {|cat| cat.name == cat_name }
      cat.owner = self
    end
  end

  def feed_cats
    self.cat.each {|cat| cat.mood = "happy"}
  end

  def sell_pets
    self.cat.each {|cat| cat.mood = "nervous" && cat.owner = nil }
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def reset_all
    @@all.clear
  end
end

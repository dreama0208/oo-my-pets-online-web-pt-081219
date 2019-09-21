class Owner
  # code goes here
  attr_reader :name, :species
  attr_accessor :cat, :dog
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    "I am a human."
  end

  def cats
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

  def self.reset_all
    @@all.clear
  end
end

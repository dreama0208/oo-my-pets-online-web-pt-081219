class Owner
  # code goes here
  attr_reader :name, :species
  attr_accessor :cats, :dogs
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
    Cat.all.select {|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def buy_cat(cat_name)
    if cat = Cat.all.find {|cat| cat.name == cat_name }
      cat.owner = self
    end
    self.cats
  end

  def buy_dog(dog_name)
    if dog = Dog.all.find {|dog| dog.name == dog_name }
      dog.owner = self
      self.dogs
    end
  end

  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end

  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"}
  end

  def sell_pets
    self.cats.each {|cat| cat.mood = "nervous" && cat.owner = nil }
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

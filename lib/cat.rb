class Cat
  # code goes here
  attr_accessor :name, :owner
  attr_writer :mood
  @@all = []

  def initialize(name, owner, mood = "nervous")
    @name = name
    @owner.name = owner
    @mood = mood
    @@all << self
  end

  def self.all
    @@all
  end

  def count
    @@all.length
  end
end

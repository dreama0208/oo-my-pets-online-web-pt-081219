class Cat
  # code goes here
  attr_reader :name
  attr_accessor :owner, :mood
  @@all = []

  def initialize(name, owner)
    @name = name
    @owner = Owner
    @mood = "nervous"
    @@all << self
  end

  def self.all
    @@all
  end

  def count
    @@all.length
  end
end

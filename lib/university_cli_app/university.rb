class UniversityCliApp::University
  attr_accessor :name, :rank, :location, :url, :description
  @@all = []

  def self.all
    @@all
  end

  def initialize(name, rank, location, url, description)
    @name = name
    @rank = rank
    @location = location
    @url = url
    @description = description
    save
  end

  def save
    @@all << self
  end
end

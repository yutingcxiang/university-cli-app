class UniversityCliApp::University
  attr_accessor :name, :rank, :location, :url, :description
  @@all = []

  # def initialize(name=nil, rank=nil, location=nil, url=nil, description=nil)
  #   @name = name
  #   @rank = rank
  #   @location = location
  #   @url = url
  #   @description = description
  # end

  def self.all
    @@all
  end

  def build_list
    UniversityCliApp::University_scraper.scrape_school_list
  end

end

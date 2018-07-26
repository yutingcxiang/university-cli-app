class UniversityCliApp::Top50
  attr_accessor :name, :rank, :location, :url, :acceptance, :ACT, :age, :hhincome, :livingcost, :degreed
  @@all

  def self.all
    @all
  end

  def top50
    self.scrape_university_list
  end

  def scrape_university_list
    universities = Nokogiri::HTML(open("https://www.thebestcolleges.org/rankings/top-50/"))
    list =  = []
    # Name: Princeton => univerity.css("rankings-list h4.rank_title_link").text
    # Rank: 1 => university.css(rank-td rank js-trigger")
    # Location: NJ => univerity.css("rankings-list h4.rank_title_link").text
    # Acceptance Rate: 6%
    # ACT 25th-75th percentile: 32-35
    # Median age: 31.5
    # Median household income: $89,847
    # Cost of living index: 148.9
    # College degreed: 78.5%
  end

end

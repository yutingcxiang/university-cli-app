class UniversityCliApp::Top50
  attr_accessor :name, :rank, :location, :url, :acceptance, :ACT, :age, :hhincome, :livingcost, :degreed
  @@all = []

  def initialize
    university_list
  end

  def university_list
    universities = Nokogiri::HTML(open("https://www.thebestcolleges.org/rankings/top-50/"))
    university_list = []
    # name: rank-tr js-target is-active
    # rank: rank-td rank js-trigger
    university_list.each
    # 1. Princeton University
    # 2. Harvard University
    # 3. Swarthmore College
  end

  def university_page
    university = Nokogiri::HTML(open("https://www.thebestcolleges.org/rankings/top-50/"))
    # university = {}
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

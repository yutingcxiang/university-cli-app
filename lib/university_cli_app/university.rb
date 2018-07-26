class University::Top50
  attr_accessor :name, :rank, :location, :url, :acceptance, :ACT, :age, :hhincome, :livingcost, :degreed

  def initialize
    self.university_list
  end

  def university_list(https://www.thebestcolleges.org/rankings/top-50/)
    universities = Nokogiri::HTML(open(url))
    university_list = []

    # 1. Princeton University
    # 2. Harvard University
    # 3. Swarthmore College
  end

  def university_page(https://www.thebestcolleges.org/rankings/top-50/)
    # university = Nokogiri::HTML(open(url))
    # university = {}
    # Name: Princeton => univerity.css("rankings-list h4.rank_title_link").text
    # Rank: 1 => university.css(rank-td rank js-trigger ::before")
    # Location: NJ => univerity.css("rankings-list h4.rank_title_link").text
    # Acceptance Rate: 6%
    # ACT 25th-75th percentile: 32-35
    # Median age: 31.5
    # Median household income: $89,847
    # Cost of living index: 148.9
    # College degreed: 78.5%
  end

end

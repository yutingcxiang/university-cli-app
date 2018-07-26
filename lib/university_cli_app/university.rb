class UniversityCliApp::Top50
  attr_accessor :name, :rank, :location, :url, :description
  @@all

  def self.all
    @all
  end

  def top50
    self.scrape_university_list
  end

  def scrape_university_list
    university = Nokogiri::HTML(open("https://www.thebestcolleges.org/rankings/top-50/"))
    university.css("rank-tbody").each do |university|
    # Name: Princeton => univerity.css("rankings-list rank-td title js-trigger h4.rank_title_link").text
    # Rank: 1 => university.css(rank-td rank js-trigger")
    # Location: NJ => univerity.css("rankings-list h4.rank_title_link").text
    # Description:
    # Url:
    end
  end

end

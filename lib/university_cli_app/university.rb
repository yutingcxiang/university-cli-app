class UniversityCliApp::University
  attr_accessor :name, :rank, :location, :url, :description
  @@all

  def self.all
    @all
  end

  def self.school_list
    scrape_university_list
  end

  def self.scrape_university_list
    universities = Nokogiri::HTML(open("https://www.thebestcolleges.org/rankings/top-50/"))
    school_list = []
    universities.css("rank-tbody").each do |school|
      school_list << school = {
      :name => univerities.css(".rank-td title js-trigger h4 a").text,
      :location => univerities.css(".rank-td title js-trigger h4 span").text,
      :url => univerities.css(".rank-td title js-trigger h4 a").attribute("href").value,
      :description => univerities.css(".rank-td stat .stats").text,
      :rank => univerities.css(".rank-td rank js-trigger").text
    }
    end
    school_list
  end

end

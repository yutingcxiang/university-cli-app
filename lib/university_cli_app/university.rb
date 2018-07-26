class UniversityCliApp::University
  attr_accessor :name, :rank, :location, :url, :description

  def self.school_list
    self.scrape_university_list
  end

  def self.scrape_university_list
    universities = Nokogiri::HTML(open("https://www.thebestcolleges.org/rankings/top-50/"))
    school_list = []
    # universities.css(".rank-tbody").each do |school|
    #   school_list << school = {
    #     :name => universities.css(".rank-td title js-trigger h4 a").text,
    #     :location => universities.css(".rank-td title js-trigger h4 span").text,
    #     :url => universities.css(".rank-td title js-trigger h4 a").attribute("href").value,
    #     :description => universities.css(".rank-td stat .stats").text,
    #     :rank => universities.css(".rank-td rank js-trigger").text
    # }
    end
    school_list
    binding.pry
  end

end

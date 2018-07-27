class UniversityCliApp::University
  attr_accessor :name, :rank, :location, :url, :description

  def self.school_list
    doc = Nokogiri::HTML(open("https://www.thebestcolleges.org/rankings/top-50/"))
    #scrape_school_list
    binding.pry
  end

  def self.scrape_school_list
    doc = Nokogiri::HTML(open("https://www.thebestcolleges.org/rankings/top-50/"))
    school_list = []
    table = doc.css("table.rankings-list")
    table.css('tr').each do |tr|
      tr.css('td').each do |td|
        school_list << school = {
          :rank => td.css("rank-td rank js-trigger").text,
          #:url => td.css("rank-td title js-trigger h4 a").attribute("href").value,
          :location => td.css("rank-td title js-trigger h4 span").text,
          :description1 => td.css("rank-td stat copy p").text
        }
      end
    end
    binding.pry
    school_list
  end

end

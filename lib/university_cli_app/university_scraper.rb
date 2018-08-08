# require 'capybara/poltergeist'
# require 'pry'

class UniversityCliApp::University_scraper
  attr_accessor :name, :rank, :location, :url, :description

  # def self.school_list
  #   scrape_school_list
  # end

  def self.scrape_school_list
    # options = {
    #   js_errors: false,
    # }
    Capybara.register_driver :poltergeist do |app|
      Capybara::Poltergeist::Driver.new(app,
        js_errors: false, phantomjs_logger: StringIO.new)
    end

    session = Capybara::Session.new(:poltergeist)

    doc = session.visit('https://www.thebestcolleges.org/rankings/top-50/')
    session.find('.js-rankings-expand-all').click
    #puts session.document.title

    list = UniversityCliApp::University.all
    session.all('table.rankings-list tbody tr').each do |item|
      list << {
        :rank => item.find('td.rank').text,
        :name => item.find('td.title a.rank-title-link').text,
        :location => item.find('td.title span.label').text,
        :url => item.find('td.stat.link a')['href'],
        :description => item.first("td.stat.copy p").text
      }
    end
    list
  end
end

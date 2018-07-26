Github name: university-cli-app
Spec.md file: check off and explain how you've met the requirement
README.md:
  1. a short description
  2. install instructions
  3. a contributors guide
  4. a link to the license for your code
require and require-relative files

irb bundle install university

require 'nokogiri'
require 'open uri'
require 'pry'

1) UniversityCLI
-"Welcome to the top 50 Colleges & Universities in America for 2018."
-"Please select an option:"
  1. View college list
  2. Select University by name
  3. Select University by rank
  4. Select university by location (state)
  5. Exit
-> "Would you like additional details? (Y/N)"
-> Additional info + website link
-> "Would you like to see another college? (Y/N)"
-> Back to menu or quit

2) UniversityScraper
def university_list(url)
  universities = Nokogiri::HTML(open(url))
  university_list = []
  1. Princeton University
  2. Harvard University
  3. Swarthmore College
end

def university_page(url)
  university = Nokogiri::HTML(open(url))
  university = {}
  Acceptance Rate: 6%
  ACT 25th-75th percentile: 32-35
  Median age: 31.5
  Median household income: $89,847
  Cost of living index: 148.9
  College degreed: 78.5%
end

3) University
Class University
  attr_accessor :name, :rank, :location, :url,
  :acceptance, :ACT, :age, :hhincome, :livingcost, :degreed
  @all = []

  def initialize
  end
end

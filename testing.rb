require 'capybara/poltergeist'
require 'pry'

options = {
  js_errors: false,
}

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, options)
end

session = Capybara::Session.new(:poltergeist)

doc = session.visit('https://www.thebestcolleges.org/rankings/top-50/')
session.find('.js-rankings-expand-all').click
puts session.document.title

test_array = []
test_array2 = []

session.all('table.rankings-list tbody tr').each do |item|
  #item.find('td.rank-td.title.js-trigger').click
  test_array << item.find('td.rank').text
  test_array2 << item.first("td.stat.copy p").text
end

binding.pry
#td.rank-td.title.js-trigger::after

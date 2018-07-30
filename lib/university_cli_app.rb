require 'open-uri'
require 'pry'
require 'capybara/poltergeist'
Capybara.javascript_driver = :poltergeist
#require 'nokogiri'

require_relative "./university_cli_app/version"
require_relative "./university_cli_app/university_scraper"
require_relative "./university_cli_app/university_cli"

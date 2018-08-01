
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "university_cli_app/version"

Gem::Specification.new do |spec|
  spec.name          = "university_cli_app"
  spec.version       = UniversityCliApp::VERSION
  spec.authors       = ["Christine Xiang"]
  spec.email         = ["yutingcxiang@gmail.com"]

  spec.summary       = "This app displays the top 50 colleges and universities in America for 2018."
  spec.description   = "This app will display a list of the top ranked national universities in the U.S. in 2018. When the app is started, the user is given a navigational menu and prompted to view the entire university list, to select a university by ranking number to get more information, or to quit the app. If the user chooses to view the entire university list, a scraped list of university names from https://www.thebestcolleges.org/rankings/top-50/ will be displayed. The user can then choose to retrieve details from a specific university by providing the rank number or to return to the navigational menu. If the user chooses to get more information on a specific university, additional details will be provided as well as a link to the university site. The app will be composed of a University class for each individual university, a UniversityScraper for retrieving the information from the site, and a UniversityCLI interface."
  spec.homepage      = "https://github.com/yutingcxiang/university-cli-app"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"
  spec.add_dependency "capybara"
  spec.add_dependency "poltergeist"
end

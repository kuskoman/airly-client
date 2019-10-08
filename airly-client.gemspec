Gem::Specification.new do |s|
    s.name          = 'airly-client'
    s.version       = '0.0.1'
    s.date          = '2019-10-08'
    s.summary       = "Client for airly.eu api"
    s.description   = "Simple client for fetching information from airly.eu"
    s.authors       = ["kuskoman"]
    s.email         = 'kubasurdej@gmail.com'
    s.files         = `git ls-files -z`.split("\x0")
    s.require_paths = ["lib"]
    s.homepage      =
      'https://github.com/kuskoman/airly-client'
    s.license       = 'MIT'

    s.add_dependency 'httparty', '~> 0.17.1'
  end
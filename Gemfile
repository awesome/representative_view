source "http://rubygems.org"

# Specify your gem's dependencies in representative_view.gemspec
gemspec

if ENV["ACTIONPACK_VERSION"]
  gem "actionpack", ENV["ACTIONPACK_VERSION"]
end

group :test do
  gem "rake", "~> 0.8.7"
  gem "rspec", "~> 2.5.0"
  gem "rr", "~> 1.0.2"
  gem "minstrel"
end

# If you have OpenSSL installed, we recommend updating
# the following line to use "https"
source 'http://rubygems.org'

# group :assets do
  # gem "sass-rails", :require => false
  # gem "coffee-rails", :require => false
  # gem "compass-rails", :require => false
# end

# gem "zurb-foundation", :require => false

# gem "foundation", :git => "git@github.com:zurb/foundation.git", :require => false
# gem "sprockets", "~>2.10.0"
# gem "foundation-rails", :require => false

# gem "foundation", :git => "git@github.com:zurb/foundation.git", :branch => "5.0-wip"
# gem "foundation-compass-template", :git => "git@github.com:manofstone/foundation-compass-template.git", :require => false

gem "slim"

gem "bourbon", :require => false

gem "middleman", "~>3.1.4"

# Live-reloading plugin
gem "middleman-livereload", "~> 3.1.0"

# For faster file watcher updates on Windows:
gem "wdm", "~> 0.1.0", :platforms => [:mswin, :mingw]

# Cross-templating language block fix for Ruby 1.8
platforms :mri_18 do
  gem "ruby18_source_location"
end

# blog
gem "builder"
gem "redcarpet"
gem "middleman-blog"
# gem "middleman-blog", :github => "middleman/middleman-blog"
gem 'nokogiri'

# to sync to s3
# gem "middleman-sync", "~> 3.0.11"
gem 'middleman-s3_sync'

# gem 'image_optim', :git => 'git@github.com:manofstone/image_optim.git'
# image optimization
# gem "middleman-imageoptim", :github => "manofstone/middleman-imageoptim"
gem "middleman-imageoptim"

# google closure compiler
gem "closure-compiler"

# for deploying to rackspace cloud
gem "middleman-deploy"

gem 'sanitize'
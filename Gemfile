#Adapted from https://gitlab.com/jvenom/venomous-software/-/raw/master/Gemfile

source "https://rubygems.org"
ruby RUBY_VERSION

# This will help ensure the proper Jekyll version is running.
gem "jekyll"

# Plugins of this site loaded during a build with proper
# site configuration.

gem "jekyll-avatar"
gem "jekyll-gist"
gem "jekyll-coffeescript"
gem "jekyll-seo-tag"
gem "jekyll-default-layout"
gem "jekyll-optional-front-matter"
gem "jekyll-paginate"
gem "jekyll-readme-index"
gem "jekyll-titles-from-headings"
gem "jekyll-relative-links"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem "html-proofer"
gem "rake"
gem "wdm", "~> 0.1.0" if Gem.win_platform?
gem "webrick", "~> 1.7" # See https://github.com/jekyll/jekyll/issues/8523

# If you have any Jekyll plugins, put them here!
group :jekyll_plugins do
  gem "jekyll-paginate"
  gem "jekyll-sitemap"
  gem "jekyll-feed"
  gem "jemoji"
  gem "jekyll-include-cache"
end


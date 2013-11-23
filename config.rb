require 'builder'
require 'closure-compiler'
require 'sanitize'


###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
# activate :livereload

# Methods defined in the helpers block are available in templates
helpers do
  def nav_active(page)
    @page_id == page ? {:class => "disabled"} : {}
  end
  def strip_html(str)
    Sanitize.clean(str, :elements => ['p'])
  end
end


set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# foundation patch per http://wanderwort.de/2013/04/11/using-zurb-foundation-with-middleman/

# foundation_path = Gem::Specification.find_by_name('foundation').gem_dir
# foundation_path = Bundler.load.specs.find{|s| s.name == 'foundation' }
# foundation_path.full_gem_path


# foundation_path = Gem::Specification.find_by_name('foundation-rails').gem_dir
bourbon_path = Gem::Specification.find_by_name('bourbon').gem_dir
# set :js_assets_paths, [File.join(foundation_path, 'js')]
# set :js_assets_paths, [File.join(foundation_path, 'vendor/assets/javascripts')]
set :js_assets_paths, [File.join(root, 'bower_components')]
# sprockets.append_path File.join "#{root}", "bower_components"
set :sass_assets_paths, [File.join(root, 'bower_components/foundation/scss'), File.join(bourbon_path, 'app/assets/stylesheets')]
# set :sass_assets_paths, [File.join(foundation_path, 'vendor/assets/stylesheets'), File.join(bourbon_path, 'app/assets/stylesheets')]

# after_configuration do
#   sprockets.append_path [File.join(foundation_path, 'js')].to_s
  # # sprockets.append_path [File.join(foundation_path, 'scss')].to_s
  # sprockets.append_path [File.join(bourbon_path, 'scss')].to_s
# end


# set :sass_assets_paths, [File.join(bourbon_path, 'scss')]
# sprockets.append_path foundation_path

# sprockets.import_asset 'normalize.css'
# sprockets.import_asset 'vendor/custom.modernizr.js'
# not working

activate :blog do |blog|
  # set options on blog
  blog.prefix = "blog"
  blog.permalink = ":title.html"
  Time.zone = "Paris"
  blog.summary_separator = /SPLIT_SUMMARY_BEFORE_THIS/
  blog.layout = "blog"
  blog.taglink = ":tag.html"
  blog.tag_template = "blog/tag.html"

  # blog.custom_collections = {
  #   :category => {
  #     :link => '/blog/categories/:category.html',
  #     :template => '/blog/category.html'
  #   }
  # }
  blog.paginate = true
  blog.page_link = "p:num"
end

page "/feed.xml", :layout => false
page "/blog/feed.xml", :layout => false

page "/zurb-foundation-blueprints.html", :layout => "landing"
page "/zurb-foundation-4-blueprints.html", :layout => "landing"
page "/zurb-foundation-4-blueprints-s.html", :layout => "landing"

page "error.html", :directory_index => false

# redcarpet configuration

set :markdown_engine, :redcarpet
set :markdown,  :fenced_code_blocks => true,
                :autolink => true,
                :smartypants => true

# pretty urls, as directories
activate :directory_indexes

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # uncomment below to activate colosure compiler, causing issues with clearing
  # set :js_compressor, ::Closure::Compiler.new


  # set :js_compressor, ::Closure::Compiler.new(:compilation_level => 'ADVANCED_OPTIMIZATIONS')
  # set :js_compressor, ::Closure::Compiler.new(:compilation_level => 'ADVANCED_OPTIMIZATIONS', :externs => "source/javascripts/vendor/jquery.externs.js")

  # gzip content for CloudFront / s3
  activate :gzip

  # Enable cache buster
  activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_path, "/Content/images/"

  # activate :imageoptim do |imageoptim|
  #   # print out skipped images
  #   imageoptim.verbose = true

  #   # Setting these to true or nil will let imageoptim determine them (recommended)
  #   imageoptim.nice = true
  #   imageoptim.threads = true

  #   # Image extensions to attempt to compress
  #   imageoptim.image_extensions = %w(.png .jpg .gif)

  #   # compressor worker options, individual optimisers can be disabled by passing
  #   # false instead of a hash
  #   # imageoptim.pngcrush_options  = {:chunks => ['alla'], :fix => false, :brute => false}
  #   # imageoptim.optipng_options   = {:level => 6, :interlace => false}
  #   # imageoptim.advpng_options    = {:level => 4}
  #   imageoptim.jpegoptim_options = {:strip => ['all'], :max_quality => 80}
  #   # imageoptim.jpegtran_options  = {:copy_chunks => false, :progressive => true, :jpegrescan => true}
  #   # imageoptim.gifsicle_options  = {:interlace => false}
  # end


end


#revised s3_sync
activate :s3_sync do |s3_sync|
  s3_sync.bucket                = ENV['MOS_AWS_BUCKET'] # The name of the S3 bucket you are targetting. This is globally unique.
  s3_sync.region                = ENV['MOS_AWS_REGION']     # The AWS region for your bucket.
  s3_sync.aws_access_key_id     = ENV['MOS_AWS_KEY']
  s3_sync.aws_secret_access_key = ENV['MOS_AWS_SECRET']
  s3_sync.delete                = true # We delete stray files by default.
  s3_sync.after_build           = false # We chain after the build step by default. This may not be your desired behavior...
  s3_sync.prefer_gzip           = true
  # caching policy stuff
  # caching_policy 'text/html', max_age: 0, must_revalidate: true
  # s3_sync.default_caching_policy max_age:(300)
end

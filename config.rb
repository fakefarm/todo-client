sprockets.append_path File.join "#{root}", "bower_components"

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.method = :git
end

activate :directory_indexes
activate :livereload
activate :syntax
set :markdown_engine, :kramdown

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

configure :build do
  activate :minify_css
  activate :minify_html
  activate :minify_javascript
  activate :relative_assets
end



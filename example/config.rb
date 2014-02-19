require "compass-selector-warn" # sudo gem install compass-selector-warn, https://github.com/pixel-shock/compass-selector-warn
require "rgbapng"				# sudo gem install compass-rgbapng , https://github.com/aaronrussell/compass-rgbapng

# Selector warn settings
selector_warn_max     = 2000

# HTTP paths
http_path             = '/'
http_stylesheets_path = '/css'
http_images_path      = '/img'
http_javascripts_path = '/js'

# File system locations
sass_dir              = 'scss'
css_dir               = 'css'
images_dir            = 'img'
javascripts_dir       = 'js'

# Set to true for easier debugging
line_comments         = false

# CSS output style - :nested, :expanded, :compact, or :compressed
output_style          = :expanded

# Determine whether Compass asset helper functions generate relative
# or absolute paths
relative_assets       = true

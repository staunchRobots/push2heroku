require "push2heroku/version"
require "hashr"

module Push2heroku
  extend ActiveSupport::Autoload

  autoload :Base
  autoload :ConfigLoader
  autoload :Git
end

require 'push2heroku/railtie'

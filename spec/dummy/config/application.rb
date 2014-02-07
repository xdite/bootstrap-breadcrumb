require File.expand_path('../boot', __FILE__)

require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

require "sass-rails"
require "jquery-rails"
require "bootstrap-sass"

require "bootstrap_breadcrumb"

module Dummy
  class Application < Rails::Application
  end
end


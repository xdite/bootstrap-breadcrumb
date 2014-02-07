class ApplicationController < ActionController::Base
  include BootstrapBreadcrumb

  protect_from_forgery with: :exception
end

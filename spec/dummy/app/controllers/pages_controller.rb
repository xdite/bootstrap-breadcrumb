class PagesController < ApplicationController
  def welcome
    drop_breadcrumb "Pages", pages_path
    drop_breadcrumb "Welcome"
  end
end

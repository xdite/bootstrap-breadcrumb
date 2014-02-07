require "active_support/concern"

require "bootstrap_breadcrumb/engine"

module BootstrapBreadcrumb
  extend ActiveSupport::Concern

  included do
    helper HelperMethods

    before_filter :set_breadcrumbs
  end

  module ClassMethods
  end

  module HelperMethods
    def render_breadcrumb
      return "" if @breadcrumbs.size <= 0

      prefix = "".html_safe
      crumb = "".html_safe

      @breadcrumbs.each_with_index do |breadcrumb_content, i|
        breadcrumb_class = []
        breadcrumb_class << "first"       if i == 0
        breadcrumb_class << "last active" if i == @breadcrumbs.length - 1

        crumb += content_tag(:li, breadcrumb_content, :class => breadcrumb_class) + "\n"
      end

      prefix + content_tag(:ol, crumb, :class => "breadcrumb")
    end
  end

  protected

  def set_breadcrumbs
    @breadcrumbs = [view_context.link_to("Home", "/")]
  end

  def drop_breadcrumb(title = nil, url = nil)
    title ||= @page_title

    if title && url
      @breadcrumbs.push(view_context.link_to(title, url))
    elsif title
      @breadcrumbs.push("#{title}".html_safe)
    end
  end

  def drop_page_title(title)
    @page_title = title

    @page_title
  end

  def no_breadcrumbs
    @breadcrumbs = []
  end
end

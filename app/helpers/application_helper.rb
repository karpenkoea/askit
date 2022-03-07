module ApplicationHelper
  include Pagy::Frontend

  def pagination(obj)
    raw(pagy_bootstrap_nav(obj)) if obj.pages > 1
  end

  def nav_link(title, url, options = {})
    current_page = options.delete :current_page
    css_class = title == current_page ? 'active' : ''
    options[:class] = options[:class].present? ? "#{options[:class]} #{css_class}" : css_class

    link_to title, url, options
  end

  def currently_at(current_page = '')
    render partial: 'shared/header', locals: {current_page: current_page}
  end

  def full_title(page_title = '')
    base_title = 'AskIt'
    page_title.present? ? "#{page_title} | #{base_title}" : base_title
  end
end

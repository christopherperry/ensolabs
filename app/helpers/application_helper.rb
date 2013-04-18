module ApplicationHelper

  def page_title(page_title)
    default_title = 'Ensō Labs'
    if page_title.empty?
      default_title
    else
      page_title
    end
  end

end

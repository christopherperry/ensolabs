module ApplicationHelper

  def page_title(page_title)
    default_title = 'Ensō Labs'
    if page_title.empty?
      default_title
    else
      page_title
    end
  end

  def body_class
    default_class = ''
    if current_page?(controller: 'home', action: 'index')
      default_class = 'pull_top'
    end
    default_class
  end

  def navbar_class
    default_class = 'navbar navbar-inverse navbar-static-top'
    if current_page?(controller: 'home', action: 'index')
      default_class = 'navbar transparent navbar-inverse navbar-fixed-top'
    end
    default_class
  end

end

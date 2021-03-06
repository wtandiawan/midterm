module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Midterm"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}|by William Tandiawan"
    end
  end
end

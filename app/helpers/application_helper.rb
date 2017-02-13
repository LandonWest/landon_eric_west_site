module ApplicationHelper

  def full_title(page_title='')
    base = 'Landon Eric West'
    page_title.empty? ? base : "#{base} | #{page_title}"
  end
end

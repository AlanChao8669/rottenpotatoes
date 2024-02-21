module MoviesHelper
  def sortable_column(column, title = nil)
    title ||= column.titleize
    css_class = session[:sort_by] == column ? (session[:order] == 'asc' ? 'asc-highlight' : 'desc-highlight') : ''
    arrow = session[:sort_by] == column ? (session[:order] == 'asc' ? "↑" : "↓") : ""
    content_tag(:th, "#{title} #{arrow}", class: css_class)
  end
end

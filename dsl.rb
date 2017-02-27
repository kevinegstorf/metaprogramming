class HTML
  def initialize(&block)
    @rendered_html = ''
    instance_eval(&block)
  end

  def method_missing(tag, *args)
    @rendered_html << "<#{tag}>#{args.first}</#{tag}>"
  end

  def render
    @rendered_html
  end
end

html = HTML.new do
  h2 'Title'
  script "$(h2).addClass('active')"
end

p html.render

class HomeController < ApplicationController
  def index
  end

  def show_simple
    render layout: 'simple'
  end

  def show
    respond_to do |format|
      format.html
      format.pdf do
        render_pdf  
      end
    end
  end

  def render_pdf
    render pdf: 'file_name',
      # show_as_html: true, # uncomment -> html structure
      template: 'home/show',
      format: [:pdf],
      handlers: [:haml],
      page_size: 'A4',
      margin: {
        top: 0,
        right: 0,
        bottom: 0,
        left: 0
      },
      disable_javascript: false,
      disable_smart_shrinking: false
  end
end

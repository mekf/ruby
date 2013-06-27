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
        # render_wicked_pdf
        render_princexml
      end
    end
  end

  def render_princexml
    render pdf: 'file_name',
      template: 'home/show.pdf.haml',
      stylesheets: ['application'],
      disposition: 'inline'
      # layout: 'pdf'
  end

  def render_wicked_pdf
    render pdf: 'file_name',
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

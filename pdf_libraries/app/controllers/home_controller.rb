class HomeController < ApplicationController

  PDF_OPTIONS = {
    pdf: 'file_name',
    template: 'home/show',
    format: [:pdf],
    handlers: [:haml],
    page_size: 'A4',
    use_xserver: true
  }

  def index
  end

  def show
    respond_to do |format|
      format.html
      format.pdf do
        render PDF_OPTIONS
      end
    end
  end
end

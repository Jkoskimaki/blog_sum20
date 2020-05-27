class PagesController < ApplicationController
  def index
    # returns an array of pages
    @pages = Page.all 
    # renders index.html.erb
  end

  def show
    #returns a single page with a single id
    @page = Page.find(params[:id]))
  end

  def new
    @page = Page.new 
    # creates database only in memory 
  end

  def create
    @page = Page.new(pages_params)
    if @page.save
      redirect_to pages_path
    else
      render :new
    end
  end

  def edit
  end

  private
  def pages_params
    params.require(:page).permit(:title, :author, :body)
  end

  # can also do create, edit, update and destroy
end

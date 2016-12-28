class PagesController < ApplicationController
  def index
    @pages = Page.all.sorted
  end

  def show
    @page = Page.find(params[:id])
  end

  def create
    @page = Page.new(page_params)
    #checks if page was successfully saved to the database.
    if @page.save
      redirect_to(pages_path)
    else
      render('new')
    end
  end

  def new
    @page = Page.new
  end

  def delete
  end

  def destroy
  end

  def update
  end

  def edit
  end

  private
  def page_params
    params.require(:page).permit(:id, :subject_id, :name, :permalink, :position, :visible)
  end

end

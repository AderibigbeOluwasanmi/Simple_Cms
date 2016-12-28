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
    @page = Page.find(params[:id])
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to(pages_path)
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(page_params)
      redirect_to(pages_path)
    else
      render('edit')
    end
  end

  def edit
    @page = Page.find(params[:id])
  end

  private
  def page_params
    params.require(:page).permit(:id, :subject_id, :name, :permalink, :position, :visible)
  end

end

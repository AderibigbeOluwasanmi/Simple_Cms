class SectionsController < ApplicationController
  def index
    @sections = Section.all.sorted
  end

  def show
    @section = Section.find(params[:id])
  end

  def create
    @section = Section.new(page_params)
    if @section.save
      redirect_to(sections_path)
    else
      render('new')
    end
  end

  def new
    @section = Section.new
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
    params.require(:section).permit(:id, :page_id, :name, :content_type, :position, :visible, :content)
  end
end

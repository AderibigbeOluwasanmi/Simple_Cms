class SectionsController < ApplicationController
  def index
    @sections = Section.all.sorted
  end

  def show
    @section = Section.find(params[:id])
  end

  def create
    @section = Section.new(section_params)
    if @section.save
      flash[:notice] = 'Section created successfully'
      redirect_to(sections_path)
    else
      render('new')
    end
  end

  def new
    @section = Section.new
  end

  def delete
    @section = Section.find(params[:id])
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    flash[:notice] = 'Section destroyed successfully'
    redirect_to(sections_path)
  end

  def update
    @section = Section.find(params[:id])
    if @section.update_attributes(section_params)
      flash[:notice] = 'Section updated successfully'
      redirect_to(sections_path)
    else
      render('edit')
    end
  end

  def edit
    @section = Section.find(params[:id])
  end

  private
  def section_params
    params.require(:section).permit(:id, :page_id, :name, :content_type, :position, :visible, :content)
  end
end

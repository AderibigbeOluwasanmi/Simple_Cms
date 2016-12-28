class SubjectsController < ApplicationController
  def index
    @subjects = Subject.sorted

  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new(:name => 'Default')
  end

  def create
    @subject = Subject.new(subject_params)
    @subject.save ? redirect_to(subjects_path) : render('new')
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])
    @subject.update_attributes(subject_params) ? redirect_to(subject_path(@subject.id)) : render('edit')
  end

  def delete
  end

  def destroy
  end

  private

  def subject_params
    params.require(:subject).permit(:name, :visible, :position)
  end
end

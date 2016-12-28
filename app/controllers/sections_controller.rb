class SectionsController < ApplicationController
  def index
    @sections = Section.all.sorted
  end

  def show
  end

  def create
  end

  def new
  end

  def delete
  end

  def destroy
  end

  def update
  end

  def edit
  end
end

class PagesController < ApplicationController
  def index
    @pages = Page.all.sorted
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

class PagesController < ApplicationController
  def index
    @pages = Page.order('position ASC')
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @pages = Page.new
  end
  
  def create
    @pages = Page.new(page_params)
    if @page.save
      redirect_to(pages_path)
    else
      render('new')
    end
  end

  def edit
    @pages = Page.find(params[:id])
  end
  
  def update
    @pages = Page.find(params[:id])
    if @page.update(page_params)
      redirect_to(page_path(@page))
    else
      render('edit')
    end
  end

  def delete
    @pages = Page.find(params[:id])
  end
  
  def destroy
    @pages = Page.find(params[:id])
    @page.destroy
    redirect_to(pages_path)
  end

  private
  def page_params
    params.require(:page).permit(
      :name,
      :visible,
      :position,
      :permalink,
      :content,
      :subject_id,
    )
  end
end

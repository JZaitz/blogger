class TagsController < ApplicationController

  def show
    @tag = Tag.find(params[:id])
  end

  def index
    @tag = Tag.all
  end

  def destroy
    @tag = Tag.find(params[:id])
    flash.notice = "Tag #{@tag.name} deleted."
    @tag.articles.destroy
    redirect_to tag_path
  end


end

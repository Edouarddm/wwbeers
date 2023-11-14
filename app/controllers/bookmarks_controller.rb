class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:destroy]

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = List.first
    if @bookmark.save!
      flash[:notice] = "Beer added to favorites! 🍺"
      redirect_to request.referrer
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark.destroy
    redirect_to list_path(@bookmark.list)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :beer_id)
  end

  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end
end

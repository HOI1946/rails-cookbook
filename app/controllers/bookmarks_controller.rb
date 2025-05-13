class BookmarksController < ApplicationController
  before_action :set_category

  def new
    @bookmark = Bookmark.new
    @recipes = Recipe.all - @category.recipes
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.category = @category

    if @bookmark.save
      redirect_to category_path(@category), notice: "Recipe added to category!"
    else
      @recipes = Recipe.all - @category.recipes
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to category_path(@category), notice: "Bookmark deleted."
  end

  private

  def set_category
    @category = Category.find(params[:category_id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:recipe_id, :comment)
  end
end

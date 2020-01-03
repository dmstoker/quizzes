class RatingsController < ApplicationController
  def index
  @rating = Rating.last
  end

  def create
    Rating.create(quote_params)
    redirect_to root_path
  end

  private

  def quote_params
    params.require(:rating).permit(:name, :rating)
  end
end

class ReviewsController < ApplicationController

  def create
    Review.create(user: current_user, product_id: params["product_id"].to_i, description: params["review"]["description"], rating: params["review"]["rating"].to_i)
    redirect_to :back
  end
end
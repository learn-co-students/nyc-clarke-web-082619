class Api::V1::ReviewsController < ApplicationController
  def index
    @reviews = Review.all

    render json: @reviews, status: :ok
  end

  def show
    @review = Review.find(params[:id])

    render json: @review, status: :ok
  end
end
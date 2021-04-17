class ReviewsController < ApplicationController
    before_action :set_review, only: [:edit, :update]
    def index
        @reviews=Review.all
    end
    def new 
    end
    def edit
        @review=Review.find(params[:id])
    end
    def update
        if @review.update(review_params)
            redirect_to @review
        else
            render 'edit'
        end
    end
    def set_review
        @review = Review.find(params[:id])
    end
    def show
        @review=Review.find(params[:id])
    end
    def create
       # render plain: params[:product] .inspect
       @review=Review.new(review_params)
       @review.save
       redirect_to @review
    end
    def destroy
        @review = Review.find(params[:id])
        @review.destroy
        redirect_to reviews_path
    end
    private
    def review_params
        params.require(:review) .permit(:ProfileId, :ProductId, :Author, :ProductRating, :ReviewText, :DateofReview)
    end
end

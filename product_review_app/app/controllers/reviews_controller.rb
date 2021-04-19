class ReviewsController < ApplicationController
    before_action :set_review, only: [:edit, :update]
    before_action :authorize, only: [:create] 
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
       if @review.save
       redirect_to reviews_path, notice:
       "You have successfull added a review"
       else
        redirect_to reviews_path, notice:
        "You must be signed in to add reviews"
    end
    def destroy
        @review = Review.find(params[:id])
        @review.destroy
        redirect_to reviews_path
    end
    def search
        @reviews = if params[:term]
            Review.where('Author LIKE ? OR ', "%#{params[:term]}")
        else
            Review.all
        end
    end
    private
    def review_params
        params.require(:review) .permit(:ProfileId, :ProductId, :Author, :ProductRating, :ReviewText, :DateofReview)
    end
end
end

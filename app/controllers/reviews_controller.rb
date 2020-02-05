class ReviewsController < ApplicationController  
    skip_before_action :authorized, only: [:index_resort, :show]


    def index_resort
        options = {}
        options[:include] = [:user]
        name = params[:id].split("_")
        name = name.map {|word| word.capitalize}
        name = name.join(" ")
        resort = Resort.find_by(name: name)
        reviews = Review.where("resort_id = #{resort.id}")
        render json: ReviewSerializer.new(reviews, options)
    end
  
    def create
        review = Review.create(review_params)
        if review.valid?
            options = {}
            options[:include] = [:user]
            reviews = Review.where("resort_id = #{review.resort_id}")
            render json: ReviewSerializer.new(reviews, options)
        end
    end
  
    def show
        review = Review.find(params[:id])
        render json: ReviewSerializer.new(review)
    end

    def destroy
        review = Review.find(params[:id])
        review.destroy
        render json: {review: "review deleted!"}
    end
  
    private
        def review_params
          params.require(:review).permit(:text, :rating, :user_id, :resort_id)
        end
end

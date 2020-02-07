class SavedResortsController < ApplicationController
    skip_before_action :authorized

    def index_user

        saved_resorts = SavedResort.where(user_id: params[:id])
        saved_resorts = saved_resorts.select {|saved| saved.save_type == params[:type]}
        if saved_resorts == []
            render json: {data: "nothing"}
        else
            resorts = saved_resorts.map{|saved| saved.resort}

            render json: ResortSerializer.new(resorts)
        end

    end

    def create
        saved_resort = SavedResort.create(saved_resort_params)
        if saved_resort.valid?
            options = {}
            options[:include] = [:saved_resorts]
            resort = Resort.find(saved_resort.resort_id)
            render json: ResortSerializer.new(resort, options)
        end
    end

    def destroy
        review = Review.find(params[:id])
        review.destroy
        render json: {review: "saved resort deleted!"}
    end
  
    private
        def saved_resort_params
          params.require(:saved_resort).permit(:user_id, :resort_id, :save_type)
        end
end

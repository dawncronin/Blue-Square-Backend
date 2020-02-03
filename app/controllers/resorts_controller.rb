class ResortsController < ApplicationController
    skip_before_action :authorized


    def index
        resorts = Resort.all 
        render json: ResortSerializer.new(resorts)
    end

    def show
        resort = Resort.find(params[:id])
        render json: ResortSerializer.new(resort)
    end
end

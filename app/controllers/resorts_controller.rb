class ResortsController < ApplicationController
    skip_before_action :authorized


    def index
        resorts = Resort.all 
        render json: ResortSerializer.new(resorts)
    end

    def show
        options = {}
        options[:include] = [:saved_resorts]
        name = params[:id].split("_")
        name = name.map {|word| word.capitalize}
        name = name.join(" ")
        resort = Resort.find_by(name: name)
        render json: ResortSerializer.new(resort, options)
    end
end

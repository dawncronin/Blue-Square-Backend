class ResortsController < ApplicationController
    skip_before_action :authorized


    def index
        resorts = Resort.all 
        render json: ResortSerializer.new(resorts)
    end

    def show
        options = {}
        name = params[:id].split("_")
        # name = name.map {|word| word.capitalize}
        name = name.join(" ")
        resort = Resort.find_by(name: name)
        photo = resort.photo
        if !photo
            photo= []
        end
        saved_resorts = resort.saved_resorts
        render json: {resort: ResortSerializer.new(resort), saved_resorts: SavedResortSerializer.new(saved_resorts), photo: PhotoSerializer.new(photo)}
    end
end

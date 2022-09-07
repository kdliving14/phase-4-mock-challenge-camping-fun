class ActivitiesController < ApplicationController
    def index
        render json: Activity.all 
    end

    def show
        ac = Activity.find(params[:id])
        render json: ac 
    end
    
    def destroy
        ac = Activity.find(params[:id])
        ac.destroy
        head :no_content
    end
end

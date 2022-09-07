class SignupsController < ApplicationController
    def index
        render json: Signup.all 
    end
    
    def create
        signup = Signup.create!(s_params)
        render json: signup.activity, status: 201
    end

    private

    def s_params
        params.permit(:time, :camper_id, :activity_id)
    end
end

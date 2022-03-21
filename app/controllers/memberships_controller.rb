class MembershipsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def create
        gym = Gym.create(memberships_params)
        render json: gym, status: :created
    end

    private 

    def memberships_params
        params.permit(:gym_id, :client_id, :charge)
    end

    def render_unprocessable_entity_response
        render json: { error: "invalid membership" }, status: :unprocessable_entity 
    end
end

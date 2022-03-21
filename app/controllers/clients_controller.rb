class ClientsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        clients = Client.all
        render json: clients, status: :ok
    end

    def show 
        client = Client.find(params[:id])
        render json: client, serializer: ClientMembershipTotalSerializer, status: :ok
    end

    private

    def render_not_found_response(invalid)
        render json: { error: invalid.message }, status: :not_found 
    end
end

class DestinationsController < ApplicationController
    
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
       

     #GET   
    def index
        destination = Destination.all
        render json: destination
    end

    #GET by Id
    def show
        destination = find_destination
        render json: destination
        
    end

    #POST
    def create
        destination = Destination.create!(destination_params)
        render json: destination, status: :created
    end

    #PATCH
    def update 
        
        destination = find_destination
        destination.update!(destination_params)
        render json: destination
         
    end

    #DELETE
    def destroy
        destination = find_destination
        destination.destroy
        head :no_content
    end

    private
    
    def find_destination
        Destination.find(params[:id])
    end

    def destination_params
        params.permit(:name, :image, :video, :description)
    end

    def render_not_found_response
        render json: { error: "Destination not found" }, status: :not_found
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    
    end
end

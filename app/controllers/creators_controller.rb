class CreatorsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
       

    #GET   
   def index
       creator = Creator.all
       render json: creator
   end

    def show
        creator = find_creator
        render json: creator.name
        
    end

    def create
        creator = Creator.create(creator_params)
        render json: creator, status: :created
    end

    #PATCH
    def update 
        
        creator = find_creator
        creator.update(creator_params)
        render json: creator
         
    end

    def destroy
        creator = find_creator
        creator.destroy
        head :no_content
    end

    private
    
    def find_creator
        Creator.find(params[:id])
    end

    def creator_params
        params.permit(:name, :isAdmin)
    end

    def render_not_found_response
        render json: { error: "Creator not found" }, status: :not_found
    end

end

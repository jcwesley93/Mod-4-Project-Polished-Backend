class Api::V1::PolishesController < ApplicationController

#    put in the polishes controller actions

    def index 
        @polishes = Polish.all 
        render json: @polishes
    end

    def show
        @polish = Polish.find(params[:id])
        render json: @polish
    end
    

    def create
        @polish = Polish.create(polish_params)
        if @polish.save 
            render json: @polish, status: :accepted
        else
            render json: {errors: @polish.errors.full_messages}, status: :unprocessible_entity
        end
    end


    def update
        @polish = Polish(params[:id])
        @polish.update(polish_params)
            if @polish.save
                render json: @polish, status: :accepted
            else
                render json: {errors: @polish.errors.full_messages}, status: :unprocessible_entity
            end
    end



    private
    def polish_params(*args)
        params.require(Polish).permit(*args)
    end



end

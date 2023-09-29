class CatsController < ApplicationController
    def index
        @felines = Cat.all
        render :index

    end 
    def show
        @feline = Cat.find_by(id: params[:id])
        if @feline
            render :show
        else
            render json: @feline.errors.full_messages, status: 422
        end 
    end 
    def new
    end 
    def create
    end 
    def edit 
    end 
    def update
    end 
    

    private
    def cat_params
        params.require(:cat).permit(:name, :sex, :color,:birth_date,:description)
    end
end 
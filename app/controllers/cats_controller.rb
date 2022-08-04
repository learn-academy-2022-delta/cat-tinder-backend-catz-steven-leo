class CatsController < ApplicationController
    def index 
        cats = Cat.all 
        render json: cats
    end 

    def create 
        cat = Cat.create(cat_params)
        render json: cats
    end 

    def update
        cat = Cat.find(params[:id])
        cat.update(cat_params)
        render json: cats
    end

    def destroy
        cat = Cat.find(params[:id])
        cat.destroy
        render json: cats 
    end 

    private
    def cat_params
        params.requires(:cat).permit(:name, :age, :status, :looking_for, :about_me, :hobbies)
    end
end

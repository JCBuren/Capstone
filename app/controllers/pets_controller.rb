class PetsController < ApplicationController

    skip_before_action :authorized_user, only: [:create, :show, :update, :index]
    skip_before_action :current_user, only: [:create, :show, :update, :index]

    def index
        render json: Pet.all

    end

def create
    new_pet = Pet.new()
    if new_pet.save
        render json: new_pet
    else
        render json: {"errors": new_pet.errors.full_messages}, status: :unprocessable_entity
    end
end

    def show
        current_pet=Pet.find_by(id: params[:id])
        if current_pet
            render json: current_pet, status: ok
        else
            render json: {"error": "Pet not found", status: :not_found}
        end
    end

end

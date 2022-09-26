class UsersController < ApplicationController

    skip_before_action :authorized_user, only: [:create, :show, :update, :index]
    skip_before_action :current_user, only: [:create, :show, :update, :index]

    def index
    render json: User.all
    end

    def create
        user=User.create(user_new_params)
        if user.valid?
            session[:logged_user] = user.id
            render json: user, status: :ok
        else
            render json:{"errors": user.errors.full_messages}, status: :unprocessable_entity
        end
    end

    # def create
    # new_user = User.new(user_new_params)
    # if new_user.save
    #     render json: new_user
    # else  
    # render json: {"errors": new_user.errors.full_messages}, status: :unprocessable_entity
    # end
    # end

    def show
    current_user=User.find_by(id: params[:id])
    if current_user
        render json: current_user, status: :ok
    else
        render json: {"error": "User not found", status: :not_found}
    end
    end

    def update
    userToUpdate = User.find_by(id:params[:id])

    if userToUpdate.update(user_update_params)
        render json: userToUpdate, status: :accepted

    else
        render json: {error: "user not found"}, status: :not_found
    end
    end

    private
    def user_new_params
    params.require(:user).permit(
        :name,
        :email,
        :username,
        :password,
        :favorite_animal
    )
    end

    def user_update_params
    params.require(:user).permit(
        :name,
        :email,
        :username,
        :password,
        :favorite_animal
    )
    end

end

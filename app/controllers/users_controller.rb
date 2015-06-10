class UsersController < ApplicationController
    
    def new
        @user = User.new
    end

    def show
        @user = User.find(params[:id])
    end

    def create
        @user = User.new(user_params)
        
        if @user.save
            redirect_to @user, 
                        notice: "Sucesso"
        else
            render action: :new
        end
    end
    
    private
    
    def user_params
        params.
            require(:user).
            permit(:email, :full_name, :password, :password_confirmation)
    end
    
end

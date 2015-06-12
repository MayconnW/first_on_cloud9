class UsersController < ApplicationController
	
	def show
		@user = User.find(params[:id])
	end
		
	def new
   @user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			SignupMailer.confirm_email(@user).deliver
			redirect_to @user, 
									notice: "Sucesso"
		else
			render :new
		end
	end
	
	def edit
		@user = User.find(params[:id])
	end
	
	def update
	  @user = User.find(params[:id])
	  if @user.update(user_params)
	    redirect_to @user,
	     						notice: 'Cadastro atualizado com sucesso!'
	  else
	    render action: :edit
	  end
	end
	
	private
	
	def user_params
		params.
				require(:user).
				permit(:email, :full_name, :password, :password_confirmation, :avatar, :address_line1,
					 		 :address_line2, :number, :zipcode, :city, :state, :cellphone)
	end
		
end

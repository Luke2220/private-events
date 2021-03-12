class UserController < ApplicationController
    
def index
   if session[:current_user_id] != nil
      @user = User.all
   else
      redirect_to new_user_path
   end
end

 def show
   @user = User.find(params[:id])
 end

 def new
  @user = User.new
 end

 def create 
    @user = User.new(user_params)
    if @user.save
      session[:current_user_id] = @user.id
        redirect_to user_path(@user.id)
    else
        render :new
    end
 end

 private

 def user_params
    params.require(:user).permit(:username)
 end

end

class UserController < ApplicationController
    
def index
end

 def show
   if session[:current_user_id] != nil
    @user = session[:current_user_id]
   else
      @user = User.new
   end
 end

 def new
  @user = User.new
 end

 def create 
    @user = User.new(user_params)
   session[:current_user_id] = @user.id
    if @user.save
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

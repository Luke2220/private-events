class SessionsController < ApplicationController
    def new

    end

    def create
        @user = User.find_by(username: params[:username])
        if @user
            session[:current_user_id] = @user.id
            redirect_to root_path, notice: 'Successfully logged in!'
        else
            flash.alert = 'No account with that name.'
            render :new
        end
    end

    def destroy
        session[:current_user_id] = nil

        redirect_to root_path, notice: 'Successfully logged out!'
    end

end

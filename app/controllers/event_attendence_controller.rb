class EventAttendenceController < ApplicationController

    def create
        @event_attendence = EventAttendence.new
        @event_attendence.event_id = params[:selected_event_id]
        @event_attendence.guest_id = params[:selected_user_id]

        if @event_attendence.save
        redirect_to user_path(session[:current_user_id]), notice: "user has been invited to event"
        else
            redirect_to user_path(session[:current_user_id]), alert: "Could not invite"
        end
    end

    def new
        @user = User.all
    end

    def update
        @event_attendence = EventAttendence.find(params[:id])
        @event_attendence.accept_invitation = true
        if @event_attendence.update(attend_params)
            redirect_to event_index_path, notice: 'You are attending this event'
        else
            redirect_to event_index_path, alert: 'Could not attend'
        end
    end

private

def attend_params
    params.require(:event_attendence).permit(:accept_invitation,:id)
end

end

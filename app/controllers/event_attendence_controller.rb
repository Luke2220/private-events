class EventAttendenceController < ApplicationController

    def create
        @user = User.find(session[:current_user_id])

        @event_attendence = @user.event_attendences.build
        @event_attendence.event_id = params[:selected_event_id]
        @event_attendence.guest_id = session[:current_user_id]

        if @event_attendence.save! 
        attend_date = Event.find(@event_attendence.event_id).event_date.to_s
        redirect_to event_index_path, notice: "You are attending this event on: #{attend_date}"
        else
            redirect_to event_index_path, alert: "Could not attend"
        end
    end
end

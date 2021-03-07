class EventAttendenceController < ApplicationController
def new
    
end

    def create
        @event_attendence = EventAttendence.new
        @event_attendence.guest_id = User.find(session[:current_user_id])
        @event_attendence.event_id = params[:selected_event_id]
        
        
        redirect_to event_index_path
    end



end

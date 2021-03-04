class EventController < ApplicationController
    def new
        @event = Event.new
    end

    def create
        @event = User.find(session[:current_user_id]).hosted_events.build(event_params)

        if @event.save!
            redirect_to event_path(@event.id)
        else
            render :new
        end
    end

    def show
       @event = Event.find(params[:id])
    end

    def index
        @event = Event.all
    end 

    private

    def event_params
        params.require(:event).permit(:event_date)
    end

end

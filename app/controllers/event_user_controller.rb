class EventUserController < ApplicationController

  def index
    
  end
  def show
    @user=User.find(params[:user])
    @event = Event.find(params[:event])
  end
  
  
  
  def add_to_table
    
    @user = User.find(params[:user])
    @event = Event.find(params[:event])
    
    
    
    @event_user=EventUser.new(event_id: @event.id, user_id: @user.id)
    
    if @event_user.save
      render event_user_add_to_table_path, :notice => "Ticket Booked Successfully"
    else
      render 'event/index', :notice => "Sorry, Ticket cannot be booked."
    end
  end
  
end

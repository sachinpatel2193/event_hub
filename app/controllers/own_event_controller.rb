class OwnEventController < ApplicationController
  def own_event
    @event=Event.where(user_id: current_user.id)
  end
end

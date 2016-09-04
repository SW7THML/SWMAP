# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class ProfileChannel < ApplicationCable::Channel
  def subscribed
    profile = Profile.find(params[:profile_id])
    stream_for profile
  end

  #def receive(data)
  #logger.info "receive"
  #logger.info data
  #  profile = Profile.find(params[:profile_id])
  #  ActionCable.server.broadcast(profile, data)
  #end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end

module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_verified_user
    end

    protected
    def find_verified_user
      #if verified_user = env['warden'].user
      #logger.info cookies.to_s
      #logger.info cookies['_swmap_session']
      if verified_user = cookies['_swmap_session']
        verified_user
      else
        reject_unauthorized_connection
      end
    end
  end
end

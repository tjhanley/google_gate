module GoogleGateHelper
  def gate_keeper
    Rails.logger.debug("Gate Keepering... am i?")

    gate_keeper_session = request.env["rack.session"][:gate_keeper]
    #Rails.logger.debug("gate keeper session: #{gate_keeper_session}")

    if !request.url.include?('google_apps') && (gate_keeper_session.blank? || gate_keeper_session > 16.hours.ago)
      redirect_to "/auth/google_apps"
    else
      true
    end
  end
end

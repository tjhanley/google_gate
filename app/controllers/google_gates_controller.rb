#module GoogleGate
class GoogleGatesController < ::ApplicationController

  def create
    omniauth = request.env["omniauth.auth"]
    #Rails.logger.debug(omniauth.inspect)
    Rails.logger.debug("Rack SESSION #{session[:gate_keeper]}")
    session[:gate_keeper] = Time.now.utc.to_s
    #Rails.logger.debug("SESSION INFO #{request.inspect}")
    #render text: "authenticated... load page"
    redirect_to root_path
  end

  def failure
    render text: "nope....", status: 403
  end

end

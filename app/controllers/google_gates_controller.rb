#module GoogleGate
class GoogleGatesController < ::ApplicationController

  def create
    omniauth = request.env["omniauth.auth"]
    render text: omniauth['info'].inspect
  end

  def failure
    render text: "nope....", status: 403
  end

end

require "google_gate/version"
require "active_support/dependencies"
require "securerandom"

module GoogleGate

  mattr_accessor :app_root

  def self.setup
    yeild self
  end

end

require 'google_gate/engine'

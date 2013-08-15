require "google_gate/version"
require "active_support/dependencies"
require "securerandom"

module GoogleGate

  #mattr_accessor :gate_keeper_required?

  def self.setup
    yield self
  end

end

require 'google_gate/engine'

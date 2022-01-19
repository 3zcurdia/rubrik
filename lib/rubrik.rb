# frozen_string_literal: true

require "rubrik/version"
require "rubrik/engine"
require "rubrik/configuration"

module Rubrik
  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end

# frozen_string_literal: true

module Rubrik
  class Configuration
    attr_accessor :default_items

    def initialize
      @default_items = %w[deficient sufficient proficient]
    end
  end
end

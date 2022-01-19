# frozen_string_literal: true

module Rubrik
  class Tier < ApplicationRecord
    belongs_to :grade, inverse_of: :tiers
    belongs_to :category, inverse_of: :tiers

    validates :points, presence: true, numericality: { only_integer: true }
  end
end

# frozen_string_literal: true

module Rubrik
  class Grade < ApplicationRecord
    belongs_to :rubric, inverse_of: :grades
    belongs_to :gradeable, polymorphic: true
    has_many :tiers, inverse_of: :grade, dependent: :destroy
  end
end

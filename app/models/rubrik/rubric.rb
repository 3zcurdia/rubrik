# frozen_string_literal: true

module Rubrik
  class Rubric < ApplicationRecord
    has_many :grades, inverse_of: :rubric, dependent: :restrict_with_error
    has_many :categories, inverse_of: :rubric, dependent: :destroy

    validates :name, presence: true
  end
end

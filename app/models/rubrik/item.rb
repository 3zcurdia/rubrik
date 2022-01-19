# frozen_string_literal: true

module Rubrik
  class Item < ApplicationRecord
    belongs_to :category, inverse_of: :items

    validates :name, presence: true
    validates :points, presence: true, numericality: { only_integer: true }
  end
end

# frozen_string_literal: true

module Rubrik
  class Category < ApplicationRecord
    belongs_to :rubric, inverse_of: :categories, counter_cache: true
    has_many :items, inverse_of: :category, dependent: :destroy
    has_many :tiers, inverse_of: :category, dependent: :restrict_with_error

    validates :name, presence: true

    def build_items
      items ||= Rubric.configuration.default_items.each_with_index.map do |name, idx|
        items.build(name: name, points: idx)
      end
    end
  end
end

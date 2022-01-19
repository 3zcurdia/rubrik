# frozen_string_literal: true

module Rubrik
  module ApplicationHelper
    def error_message_tag(model, attribute)
      return unless model.errors.key?(attribute)

      tag.p class: "help is-danger" do
        model.errors.full_messages_for(attribute).join(", ")
      end
    end
  end
end

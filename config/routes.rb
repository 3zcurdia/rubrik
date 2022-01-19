# frozen_string_literal: true

Rubrik::Engine.routes.draw do
  root to: "rubrics#index"
  resources :rubrics
end

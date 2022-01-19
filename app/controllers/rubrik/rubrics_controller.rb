# frozen_string_literal: true

module Rubrik
  class RubricsController < ApplicationController
    before_action :set_rubric, only: %i[show edit update destroy]

    def index
      @rubrics = Rubric.all
    end

    def show; end

    def new
      @rubric = Rubric.new
    end

    def edit; end

    def create
      @rubric = Rubric.new(rubric_params)

      if @rubric.save
        redirect_to @rubric, notice: "Rubric was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end

    def update
      if @rubric.update(rubric_params)
        redirect_to @rubric, notice: "Rubric was successfully updated."
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @rubric.destroy
      redirect_to rubrics_url, notice: "Rubric was successfully destroyed."
    end

    private

    def set_rubric
      @rubric = Rubric.find(params[:id])
    end

    def rubric_params
      params.require(:rubric).permit(:name)
    end
  end
end

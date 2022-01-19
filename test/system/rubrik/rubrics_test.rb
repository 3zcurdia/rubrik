# frozen_string_literal: true

require "application_system_test_case"

module Rubrik
  class RubricsTest < ApplicationSystemTestCase
    setup do
      @rubric = rubrik_rubrics(:one)
    end

    test "visiting the index" do
      visit rubrics_url
      assert_selector "h1", text: "Rubrics"
    end

    test "should create rubric" do
      visit rubrics_url
      click_on "New rubric"

      fill_in "Name", with: @rubric.name
      click_on "Create Rubric"

      assert_text "Rubric was successfully created"
      click_on "Back"
    end

    test "should update Rubric" do
      visit rubric_url(@rubric)
      click_on "Edit this rubric", match: :first

      fill_in "Name", with: @rubric.name
      click_on "Update Rubric"

      assert_text "Rubric was successfully updated"
      click_on "Back"
    end

    test "should destroy Rubric" do
      visit rubric_url(@rubric)
      click_on "Destroy this rubric", match: :first

      assert_text "Rubric was successfully destroyed"
    end
  end
end

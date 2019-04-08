require "application_system_test_case"

class ConsolidationsTest < ApplicationSystemTestCase
  setup do
    @consolidation = consolidations(:one)
  end

  test "visiting the index" do
    visit consolidations_url
    assert_selector "h1", text: "Consolidations"
  end

  test "creating a Consolidation" do
    visit consolidations_url
    click_on "New Consolidation"

    fill_in "Description", with: @consolidation.description
    fill_in "Flickr photosetid", with: @consolidation.flickr_photosetid
    fill_in "Geographic annotation", with: @consolidation.geographic_annotation
    fill_in "Name", with: @consolidation.name
    fill_in "Project", with: @consolidation.project
    fill_in "Temporal annotation", with: @consolidation.temporal_annotation
    fill_in "Uuid", with: @consolidation.uuid
    click_on "Create Consolidation"

    assert_text "Consolidation was successfully created"
    click_on "Back"
  end

  test "updating a Consolidation" do
    visit consolidations_url
    click_on "Edit", match: :first

    fill_in "Description", with: @consolidation.description
    fill_in "Flickr photosetid", with: @consolidation.flickr_photosetid
    fill_in "Geographic annotation", with: @consolidation.geographic_annotation
    fill_in "Name", with: @consolidation.name
    fill_in "Project", with: @consolidation.project
    fill_in "Temporal annotation", with: @consolidation.temporal_annotation
    fill_in "Uuid", with: @consolidation.uuid
    click_on "Update Consolidation"

    assert_text "Consolidation was successfully updated"
    click_on "Back"
  end

  test "destroying a Consolidation" do
    visit consolidations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Consolidation was successfully destroyed"
  end
end

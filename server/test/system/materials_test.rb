require "application_system_test_case"

class MaterialsTest < ApplicationSystemTestCase
  setup do
    @material = materials(:one)
  end

  test "visiting the index" do
    visit materials_url
    assert_selector "h1", text: "Materials"
  end

  test "creating a Material" do
    visit materials_url
    click_on "New Material"

    fill_in "Altitude", with: @material.altitude
    fill_in "Consolidation", with: @material.consolidation
    fill_in "Description", with: @material.description
    fill_in "Estimated period beginning", with: @material.estimated_period_beginning
    fill_in "Estimated period ending", with: @material.estimated_period_ending
    fill_in "Estimated period peak", with: @material.estimated_period_peak
    fill_in "Latitude", with: @material.latitude
    fill_in "Longitude", with: @material.longitude
    fill_in "Material number", with: @material.material_number
    fill_in "Name", with: @material.name
    fill_in "Uuid", with: @material.uuid
    click_on "Create Material"

    assert_text "Material was successfully created"
    click_on "Back"
  end

  test "updating a Material" do
    visit materials_url
    click_on "Edit", match: :first

    fill_in "Altitude", with: @material.altitude
    fill_in "Consolidation", with: @material.consolidation
    fill_in "Description", with: @material.description
    fill_in "Estimated period beginning", with: @material.estimated_period_beginning
    fill_in "Estimated period ending", with: @material.estimated_period_ending
    fill_in "Estimated period peak", with: @material.estimated_period_peak
    fill_in "Latitude", with: @material.latitude
    fill_in "Longitude", with: @material.longitude
    fill_in "Material number", with: @material.material_number
    fill_in "Name", with: @material.name
    fill_in "Uuid", with: @material.uuid
    click_on "Update Material"

    assert_text "Material was successfully updated"
    click_on "Back"
  end

  test "destroying a Material" do
    visit materials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Material was successfully destroyed"
  end
end

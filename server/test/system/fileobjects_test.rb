require "application_system_test_case"

class FileobjectsTest < ApplicationSystemTestCase
  setup do
    @fileobject = fileobjects(:one)
  end

  test "visiting the index" do
    visit fileobjects_url
    assert_selector "h1", text: "Fileobjects"
  end

  test "creating a Fileobject" do
    visit fileobjects_url
    click_on "New Fileobject"

    fill_in "Alias name", with: @fileobject.alias_name
    fill_in "Attachment", with: @fileobject.attachment
    fill_in "Caption", with: @fileobject.caption
    fill_in "Consolidation", with: @fileobject.consolidation
    fill_in "Created date", with: @fileobject.created_date
    fill_in "Description", with: @fileobject.description
    fill_in "File name", with: @fileobject.file_name
    fill_in "File operation", with: @fileobject.file_operation
    fill_in "File type", with: @fileobject.file_type
    fill_in "Flickr photoid", with: @fileobject.flickr_photoid
    check "Is locked" if @fileobject.is_locked
    check "Make public" if @fileobject.make_public
    fill_in "Material", with: @fileobject.material
    fill_in "Modified date", with: @fileobject.modified_date
    fill_in "Operating application", with: @fileobject.operating_application
    fill_in "Source", with: @fileobject.source
    fill_in "Status", with: @fileobject.status
    fill_in "Uuid", with: @fileobject.uuid
    click_on "Create Fileobject"

    assert_text "Fileobject was successfully created"
    click_on "Back"
  end

  test "updating a Fileobject" do
    visit fileobjects_url
    click_on "Edit", match: :first

    fill_in "Alias name", with: @fileobject.alias_name
    fill_in "Attachment", with: @fileobject.attachment
    fill_in "Caption", with: @fileobject.caption
    fill_in "Consolidation", with: @fileobject.consolidation
    fill_in "Created date", with: @fileobject.created_date
    fill_in "Description", with: @fileobject.description
    fill_in "File name", with: @fileobject.file_name
    fill_in "File operation", with: @fileobject.file_operation
    fill_in "File type", with: @fileobject.file_type
    fill_in "Flickr photoid", with: @fileobject.flickr_photoid
    check "Is locked" if @fileobject.is_locked
    check "Make public" if @fileobject.make_public
    fill_in "Material", with: @fileobject.material
    fill_in "Modified date", with: @fileobject.modified_date
    fill_in "Operating application", with: @fileobject.operating_application
    fill_in "Source", with: @fileobject.source
    fill_in "Status", with: @fileobject.status
    fill_in "Uuid", with: @fileobject.uuid
    click_on "Update Fileobject"

    assert_text "Fileobject was successfully updated"
    click_on "Back"
  end

  test "destroying a Fileobject" do
    visit fileobjects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fileobject was successfully destroyed"
  end
end

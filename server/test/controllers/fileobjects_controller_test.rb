require 'test_helper'

class FileobjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fileobject = fileobjects(:one)
  end

  test "should get index" do
    get fileobjects_url
    assert_response :success
  end

  test "should get new" do
    get new_fileobject_url
    assert_response :success
  end

  test "should create fileobject" do
    assert_difference('Fileobject.count') do
      post fileobjects_url, params: { fileobject: { alias_name: @fileobject.alias_name, attachment: @fileobject.attachment, caption: @fileobject.caption, consolidation: @fileobject.consolidation, created_date: @fileobject.created_date, description: @fileobject.description, file_name: @fileobject.file_name, file_operation: @fileobject.file_operation, file_type: @fileobject.file_type, flickr_photoid: @fileobject.flickr_photoid, is_locked: @fileobject.is_locked, make_public: @fileobject.make_public, material: @fileobject.material, modified_date: @fileobject.modified_date, operating_application: @fileobject.operating_application, source: @fileobject.source, status: @fileobject.status, uuid: @fileobject.uuid } }
    end

    assert_redirected_to fileobject_url(Fileobject.last)
  end

  test "should show fileobject" do
    get fileobject_url(@fileobject)
    assert_response :success
  end

  test "should get edit" do
    get edit_fileobject_url(@fileobject)
    assert_response :success
  end

  test "should update fileobject" do
    patch fileobject_url(@fileobject), params: { fileobject: { alias_name: @fileobject.alias_name, attachment: @fileobject.attachment, caption: @fileobject.caption, consolidation: @fileobject.consolidation, created_date: @fileobject.created_date, description: @fileobject.description, file_name: @fileobject.file_name, file_operation: @fileobject.file_operation, file_type: @fileobject.file_type, flickr_photoid: @fileobject.flickr_photoid, is_locked: @fileobject.is_locked, make_public: @fileobject.make_public, material: @fileobject.material, modified_date: @fileobject.modified_date, operating_application: @fileobject.operating_application, source: @fileobject.source, status: @fileobject.status, uuid: @fileobject.uuid } }
    assert_redirected_to fileobject_url(@fileobject)
  end

  test "should destroy fileobject" do
    assert_difference('Fileobject.count', -1) do
      delete fileobject_url(@fileobject)
    end

    assert_redirected_to fileobjects_url
  end
end

require 'test_helper'

class ConsolidationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consolidation = consolidations(:one)
  end

  test "should get index" do
    get consolidations_url
    assert_response :success
  end

  test "should get new" do
    get new_consolidation_url
    assert_response :success
  end

  test "should create consolidation" do
    assert_difference('Consolidation.count') do
      post consolidations_url, params: { consolidation: { description: @consolidation.description, flickr_photosetid: @consolidation.flickr_photosetid, geographic_annotation: @consolidation.geographic_annotation, name: @consolidation.name, project: @consolidation.project, temporal_annotation: @consolidation.temporal_annotation, uuid: @consolidation.uuid } }
    end

    assert_redirected_to consolidation_url(Consolidation.last)
  end

  test "should show consolidation" do
    get consolidation_url(@consolidation)
    assert_response :success
  end

  test "should get edit" do
    get edit_consolidation_url(@consolidation)
    assert_response :success
  end

  test "should update consolidation" do
    patch consolidation_url(@consolidation), params: { consolidation: { description: @consolidation.description, flickr_photosetid: @consolidation.flickr_photosetid, geographic_annotation: @consolidation.geographic_annotation, name: @consolidation.name, project: @consolidation.project, temporal_annotation: @consolidation.temporal_annotation, uuid: @consolidation.uuid } }
    assert_redirected_to consolidation_url(@consolidation)
  end

  test "should destroy consolidation" do
    assert_difference('Consolidation.count', -1) do
      delete consolidation_url(@consolidation)
    end

    assert_redirected_to consolidations_url
  end
end

# frozen_string_literal: true

require "test_helper"

class EpisodesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get episodes_index_url
    assert_response :success
  end

  test "should get show" do
    get episodes_show_url
    assert_response :success
  end

  test "should get create" do
    get episodes_create_url
    assert_response :success
  end

  test "should get update" do
    get episodes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get episodes_destroy_url
    assert_response :success
  end
end

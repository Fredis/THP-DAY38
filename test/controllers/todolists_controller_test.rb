require 'test_helper'

class TodolistsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get todolists_new_url
    assert_response :success
  end

  test "should get create" do
    get todolists_create_url
    assert_response :success
  end

  test "should get index" do
    get todolists_index_url
    assert_response :success
  end

end

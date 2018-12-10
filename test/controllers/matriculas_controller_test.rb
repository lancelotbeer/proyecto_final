require 'test_helper'

class MatriculasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get matriculas_index_url
    assert_response :success
  end

  test "should get create" do
    get matriculas_create_url
    assert_response :success
  end

  test "should get edit" do
    get matriculas_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get matriculas_destroy_url
    assert_response :success
  end

  test "should get show" do
    get matriculas_show_url
    assert_response :success
  end

end

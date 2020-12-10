require 'test_helper'

class ApproachesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @approach = approaches(:one)
  end

  test "should get index" do
    get approaches_url
    assert_response :success
  end

  test "should get new" do
    get new_approach_url
    assert_response :success
  end

  test "should create approach" do
    assert_difference('Approach.count') do
      post approaches_url, params: { approach: { text: @approach.text } }
    end

    assert_redirected_to approach_url(Approach.last)
  end

  test "should show approach" do
    get approach_url(@approach)
    assert_response :success
  end

  test "should get edit" do
    get edit_approach_url(@approach)
    assert_response :success
  end

  test "should update approach" do
    patch approach_url(@approach), params: { approach: { text: @approach.text } }
    assert_redirected_to approach_url(@approach)
  end

  test "should destroy approach" do
    assert_difference('Approach.count', -1) do
      delete approach_url(@approach)
    end

    assert_redirected_to approaches_url
  end
end

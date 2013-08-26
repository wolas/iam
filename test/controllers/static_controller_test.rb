require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get manifesto" do
    get :manifesto
    assert_response :success
  end

  test "should get trajectory" do
    get :trajectory
    assert_response :success
  end

end

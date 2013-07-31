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

  test "should get trayectory" do
    get :trayectory
    assert_response :success
  end

end

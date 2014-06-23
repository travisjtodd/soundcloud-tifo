require 'test_helper'

class TifosControllerTest < ActionController::TestCase
  setup do
    @tifo = tifos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tifos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tifo" do
    assert_difference('Tifo.count') do
      post :create, tifo: { team_id: @tifo.team_id, track_id: @tifo.track_id }
    end

    assert_redirected_to tifo_path(assigns(:tifo))
  end

  test "should show tifo" do
    get :show, id: @tifo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tifo
    assert_response :success
  end

  test "should update tifo" do
    patch :update, id: @tifo, tifo: { team_id: @tifo.team_id, track_id: @tifo.track_id }
    assert_redirected_to tifo_path(assigns(:tifo))
  end

  test "should destroy tifo" do
    assert_difference('Tifo.count', -1) do
      delete :destroy, id: @tifo
    end

    assert_redirected_to tifos_path
  end
end

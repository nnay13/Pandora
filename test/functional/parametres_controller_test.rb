require 'test_helper'

class ParametresControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parametres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parametre" do
    assert_difference('Parametre.count') do
      post :create, :parametre => { }
    end

    assert_redirected_to parametre_path(assigns(:parametre))
  end

  test "should show parametre" do
    get :show, :id => parametres(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => parametres(:one).to_param
    assert_response :success
  end

  test "should update parametre" do
    put :update, :id => parametres(:one).to_param, :parametre => { }
    assert_redirected_to parametre_path(assigns(:parametre))
  end

  test "should destroy parametre" do
    assert_difference('Parametre.count', -1) do
      delete :destroy, :id => parametres(:one).to_param
    end

    assert_redirected_to parametres_path
  end
end

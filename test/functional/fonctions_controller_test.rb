require 'test_helper'

class FonctionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fonctions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fonction" do
    assert_difference('Fonction.count') do
      post :create, :fonction => { }
    end

    assert_redirected_to fonction_path(assigns(:fonction))
  end

  test "should show fonction" do
    get :show, :id => fonctions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => fonctions(:one).to_param
    assert_response :success
  end

  test "should update fonction" do
    put :update, :id => fonctions(:one).to_param, :fonction => { }
    assert_redirected_to fonction_path(assigns(:fonction))
  end

  test "should destroy fonction" do
    assert_difference('Fonction.count', -1) do
      delete :destroy, :id => fonctions(:one).to_param
    end

    assert_redirected_to fonctions_path
  end
end

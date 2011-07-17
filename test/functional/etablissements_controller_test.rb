require 'test_helper'

class EtablissementsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:etablissements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create etablissement" do
    assert_difference('Etablissement.count') do
      post :create, :etablissement => { }
    end

    assert_redirected_to etablissement_path(assigns(:etablissement))
  end

  test "should show etablissement" do
    get :show, :id => etablissements(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => etablissements(:one).to_param
    assert_response :success
  end

  test "should update etablissement" do
    put :update, :id => etablissements(:one).to_param, :etablissement => { }
    assert_redirected_to etablissement_path(assigns(:etablissement))
  end

  test "should destroy etablissement" do
    assert_difference('Etablissement.count', -1) do
      delete :destroy, :id => etablissements(:one).to_param
    end

    assert_redirected_to etablissements_path
  end
end

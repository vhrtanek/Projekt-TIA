require 'test_helper'

class BankDataControllerTest < ActionController::TestCase
  setup do
    @bank_datum = bank_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bank_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bank_datum" do
    assert_difference('BankDatum.count') do
      post :create, bank_datum: {  }
    end

    assert_redirected_to bank_datum_path(assigns(:bank_datum))
  end

  test "should show bank_datum" do
    get :show, id: @bank_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bank_datum
    assert_response :success
  end

  test "should update bank_datum" do
    patch :update, id: @bank_datum, bank_datum: {  }
    assert_redirected_to bank_datum_path(assigns(:bank_datum))
  end

  test "should destroy bank_datum" do
    assert_difference('BankDatum.count', -1) do
      delete :destroy, id: @bank_datum
    end

    assert_redirected_to bank_data_path
  end
end

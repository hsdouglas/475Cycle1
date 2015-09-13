require 'test_helper'

class OpenShiftsControllerTest < ActionController::TestCase
  setup do
    @open_shift = open_shifts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:open_shifts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create open_shift" do
    assert_difference('OpenShift.count') do
      post :create, open_shift: { active: @open_shift.active, is_cover?: @open_shift.is_cover?, is_request?: @open_shift.is_request?, is_trade?: @open_shift.is_trade?, opened: @open_shift.opened, original_assignee_id: @open_shift.original_assignee_id, set_shift_id: @open_shift.set_shift_id }
    end

    assert_redirected_to open_shift_path(assigns(:open_shift))
  end

  test "should show open_shift" do
    get :show, id: @open_shift
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @open_shift
    assert_response :success
  end

  test "should update open_shift" do
    patch :update, id: @open_shift, open_shift: { active: @open_shift.active, is_cover?: @open_shift.is_cover?, is_request?: @open_shift.is_request?, is_trade?: @open_shift.is_trade?, opened: @open_shift.opened, original_assignee_id: @open_shift.original_assignee_id, set_shift_id: @open_shift.set_shift_id }
    assert_redirected_to open_shift_path(assigns(:open_shift))
  end

  test "should destroy open_shift" do
    assert_difference('OpenShift.count', -1) do
      delete :destroy, id: @open_shift
    end

    assert_redirected_to open_shifts_path
  end
end

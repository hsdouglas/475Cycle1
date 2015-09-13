require 'test_helper'

class ClosedShiftsControllerTest < ActionController::TestCase
  setup do
    @closed_shift = closed_shifts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:closed_shifts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create closed_shift" do
    assert_difference('ClosedShift.count') do
      post :create, closed_shift: { claimed: @closed_shift.claimed, new_assignee_id: @closed_shift.new_assignee_id, open_shift_id: @closed_shift.open_shift_id }
    end

    assert_redirected_to closed_shift_path(assigns(:closed_shift))
  end

  test "should show closed_shift" do
    get :show, id: @closed_shift
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @closed_shift
    assert_response :success
  end

  test "should update closed_shift" do
    patch :update, id: @closed_shift, closed_shift: { claimed: @closed_shift.claimed, new_assignee_id: @closed_shift.new_assignee_id, open_shift_id: @closed_shift.open_shift_id }
    assert_redirected_to closed_shift_path(assigns(:closed_shift))
  end

  test "should destroy closed_shift" do
    assert_difference('ClosedShift.count', -1) do
      delete :destroy, id: @closed_shift
    end

    assert_redirected_to closed_shifts_path
  end
end

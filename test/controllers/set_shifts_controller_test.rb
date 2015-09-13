require 'test_helper'

class SetShiftsControllerTest < ActionController::TestCase
  setup do
    @set_shift = set_shifts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:set_shifts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create set_shift" do
    assert_difference('SetShift.count') do
      post :create, set_shift: { assignee_id: @set_shift.assignee_id, assigner_id: @set_shift.assigner_id, end: @set_shift.end, is_PTO?: @set_shift.is_PTO?, start: @set_shift.start }
    end

    assert_redirected_to set_shift_path(assigns(:set_shift))
  end

  test "should show set_shift" do
    get :show, id: @set_shift
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @set_shift
    assert_response :success
  end

  test "should update set_shift" do
    patch :update, id: @set_shift, set_shift: { assignee_id: @set_shift.assignee_id, assigner_id: @set_shift.assigner_id, end: @set_shift.end, is_PTO?: @set_shift.is_PTO?, start: @set_shift.start }
    assert_redirected_to set_shift_path(assigns(:set_shift))
  end

  test "should destroy set_shift" do
    assert_difference('SetShift.count', -1) do
      delete :destroy, id: @set_shift
    end

    assert_redirected_to set_shifts_path
  end
end

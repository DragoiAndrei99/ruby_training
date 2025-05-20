require "test_helper"

class EchipamentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @echipament = echipaments(:one)
  end

  test "should get index" do
    get echipaments_url
    assert_response :success
  end

  test "should get new" do
    get new_echipament_url
    assert_response :success
  end

  test "should create echipament" do
    assert_difference("Echipament.count") do
      post echipaments_url, params: { echipament: { descriere: @echipament.descriere, nume: @echipament.nume } }
    end

    assert_redirected_to echipament_url(Echipament.last)
  end

  test "should show echipament" do
    get echipament_url(@echipament)
    assert_response :success
  end

  test "should get edit" do
    get edit_echipament_url(@echipament)
    assert_response :success
  end

  test "should update echipament" do
    patch echipament_url(@echipament), params: { echipament: { descriere: @echipament.descriere, nume: @echipament.nume } }
    assert_redirected_to echipament_url(@echipament)
  end

  test "should destroy echipament" do
    assert_difference("Echipament.count", -1) do
      delete echipament_url(@echipament)
    end

    assert_redirected_to echipaments_url
  end
end

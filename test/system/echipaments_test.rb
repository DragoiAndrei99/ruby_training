require "application_system_test_case"

class EchipamentsTest < ApplicationSystemTestCase
  setup do
    @echipament = echipaments(:one)
  end

  test "visiting the index" do
    visit echipaments_url
    assert_selector "h1", text: "Echipaments"
  end

  test "should create echipament" do
    visit echipaments_url
    click_on "New echipament"

    fill_in "Descriere", with: @echipament.descriere
    fill_in "Nume", with: @echipament.nume
    click_on "Create Echipament"

    assert_text "Echipament was successfully created"
    click_on "Back"
  end

  test "should update Echipament" do
    visit echipament_url(@echipament)
    click_on "Edit this echipament", match: :first

    fill_in "Descriere", with: @echipament.descriere
    fill_in "Nume", with: @echipament.nume
    click_on "Update Echipament"

    assert_text "Echipament was successfully updated"
    click_on "Back"
  end

  test "should destroy Echipament" do
    visit echipament_url(@echipament)
    click_on "Destroy this echipament", match: :first

    assert_text "Echipament was successfully destroyed"
  end
end

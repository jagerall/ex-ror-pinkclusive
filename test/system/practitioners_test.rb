require "application_system_test_case"

class PractitionersTest < ApplicationSystemTestCase
  setup do
    @practitioner = practitioners(:one)
  end

  test "visiting the index" do
    visit practitioners_url
    assert_selector "h1", text: "Practitioners"
  end

  test "should create practitioner" do
    visit practitioners_url
    click_on "New practitioner"

    fill_in "Address", with: @practitioner.address
    fill_in "City", with: @practitioner.city
    fill_in "Job", with: @practitioner.job
    fill_in "Name", with: @practitioner.name
    fill_in "Phone", with: @practitioner.phone
    fill_in "Surname", with: @practitioner.surname
    click_on "Create Practitioner"

    assert_text "Practitioner was successfully created"
    click_on "Back"
  end

  test "should update Practitioner" do
    visit practitioner_url(@practitioner)
    click_on "Edit this practitioner", match: :first

    fill_in "Address", with: @practitioner.address
    fill_in "City", with: @practitioner.city
    fill_in "Job", with: @practitioner.job
    fill_in "Name", with: @practitioner.name
    fill_in "Phone", with: @practitioner.phone
    fill_in "Surname", with: @practitioner.surname
    click_on "Update Practitioner"

    assert_text "Practitioner was successfully updated"
    click_on "Back"
  end

  test "should destroy Practitioner" do
    visit practitioner_url(@practitioner)
    click_on "Destroy this practitioner", match: :first

    assert_text "Practitioner was successfully destroyed"
  end
end

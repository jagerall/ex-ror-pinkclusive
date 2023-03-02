require "application_system_test_case"

class ParasitesTest < ApplicationSystemTestCase
  setup do
    @parasite = parasites(:one)
  end

  test "visiting the index" do
    visit parasites_url
    assert_selector "h1", text: "Parasites"
  end

  test "should create parasite" do
    visit parasites_url
    click_on "New parasite"

    fill_in "Atk", with: @parasite.atk
    fill_in "Capacity", with: @parasite.capacity
    fill_in "Def", with: @parasite.def
    fill_in "Description", with: @parasite.description
    fill_in "Image", with: @parasite.image
    fill_in "Name", with: @parasite.name
    fill_in "Pv", with: @parasite.pv
    click_on "Create Parasite"

    assert_text "Parasite was successfully created"
    click_on "Back"
  end

  test "should update Parasite" do
    visit parasite_url(@parasite)
    click_on "Edit this parasite", match: :first

    fill_in "Atk", with: @parasite.atk
    fill_in "Capacity", with: @parasite.capacity
    fill_in "Def", with: @parasite.def
    fill_in "Description", with: @parasite.description
    fill_in "Image", with: @parasite.image
    fill_in "Name", with: @parasite.name
    fill_in "Pv", with: @parasite.pv
    click_on "Update Parasite"

    assert_text "Parasite was successfully updated"
    click_on "Back"
  end

  test "should destroy Parasite" do
    visit parasite_url(@parasite)
    click_on "Destroy this parasite", match: :first

    assert_text "Parasite was successfully destroyed"
  end
end

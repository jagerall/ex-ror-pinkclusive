require "application_system_test_case"

class LoresTest < ApplicationSystemTestCase
  setup do
    @lore = lores(:one)
  end

  test "visiting the index" do
    visit lores_url
    assert_selector "h1", text: "Lores"
  end

  test "should create lore" do
    visit lores_url
    click_on "New lore"

    fill_in "Content", with: @lore.content
    fill_in "Image", with: @lore.image
    fill_in "Title", with: @lore.title
    click_on "Create Lore"

    assert_text "Lore was successfully created"
    click_on "Back"
  end

  test "should update Lore" do
    visit lore_url(@lore)
    click_on "Edit this lore", match: :first

    fill_in "Content", with: @lore.content
    fill_in "Image", with: @lore.image
    fill_in "Title", with: @lore.title
    click_on "Update Lore"

    assert_text "Lore was successfully updated"
    click_on "Back"
  end

  test "should destroy Lore" do
    visit lore_url(@lore)
    click_on "Destroy this lore", match: :first

    assert_text "Lore was successfully destroyed"
  end
end

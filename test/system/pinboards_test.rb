require "application_system_test_case"

class PinboardsTest < ApplicationSystemTestCase
  setup do
    @pinboard = pinboards(:one)
  end

  test "visiting the index" do
    visit pinboards_url
    assert_selector "h1", text: "Pinboards"
  end

  test "creating a Pinboard" do
    visit pinboards_url
    click_on "New Pinboard"

    fill_in "Title", with: @pinboard.title
    fill_in "User", with: @pinboard.user_id
    click_on "Create Pinboard"

    assert_text "Pinboard was successfully created"
    click_on "Back"
  end

  test "updating a Pinboard" do
    visit pinboards_url
    click_on "Edit", match: :first

    fill_in "Title", with: @pinboard.title
    fill_in "User", with: @pinboard.user_id
    click_on "Update Pinboard"

    assert_text "Pinboard was successfully updated"
    click_on "Back"
  end

  test "destroying a Pinboard" do
    visit pinboards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pinboard was successfully destroyed"
  end
end

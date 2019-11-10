require "application_system_test_case"

class CreateUsersTest < ApplicationSystemTestCase
  setup do
    @create_user = create_users(:one)
  end

  test "visiting the index" do
    visit create_users_url
    assert_selector "h1", text: "Create Users"
  end

  test "creating a Create user" do
    visit create_users_url
    click_on "New Create User"

    click_on "Create Create user"

    assert_text "Create user was successfully created"
    click_on "Back"
  end

  test "updating a Create user" do
    visit create_users_url
    click_on "Edit", match: :first

    click_on "Update Create user"

    assert_text "Create user was successfully updated"
    click_on "Back"
  end

  test "destroying a Create user" do
    visit create_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Create user was successfully destroyed"
  end
end

require "application_system_test_case"

class WhishListsTest < ApplicationSystemTestCase
  setup do
    @whish_list = whish_lists(:one)
  end

  test "visiting the index" do
    visit whish_lists_url
    assert_selector "h1", text: "Whish Lists"
  end

  test "creating a Whish list" do
    visit whish_lists_url
    click_on "New Whish List"

    fill_in "Product", with: @whish_list.product_id
    fill_in "User", with: @whish_list.user_id
    click_on "Create Whish list"

    assert_text "Whish list was successfully created"
    click_on "Back"
  end

  test "updating a Whish list" do
    visit whish_lists_url
    click_on "Edit", match: :first

    fill_in "Product", with: @whish_list.product_id
    fill_in "User", with: @whish_list.user_id
    click_on "Update Whish list"

    assert_text "Whish list was successfully updated"
    click_on "Back"
  end

  test "destroying a Whish list" do
    visit whish_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Whish list was successfully destroyed"
  end
end

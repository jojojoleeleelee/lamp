require "application_system_test_case"

class PeacesTest < ApplicationSystemTestCase
  setup do
    @peace = peaces(:one)
  end

  test "visiting the index" do
    visit peaces_url
    assert_selector "h1", text: "Peaces"
  end

  test "creating a Peace" do
    visit peaces_url
    click_on "New Peace"

    fill_in "Book", with: @peace.book
    fill_in "Chapter", with: @peace.chapter
    fill_in "Word", with: @peace.word
    click_on "Create Peace"

    assert_text "Peace was successfully created"
    click_on "Back"
  end

  test "updating a Peace" do
    visit peaces_url
    click_on "Edit", match: :first

    fill_in "Book", with: @peace.book
    fill_in "Chapter", with: @peace.chapter
    fill_in "Word", with: @peace.word
    click_on "Update Peace"

    assert_text "Peace was successfully updated"
    click_on "Back"
  end

  test "destroying a Peace" do
    visit peaces_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Peace was successfully destroyed"
  end
end

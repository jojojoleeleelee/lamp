require "application_system_test_case"

class LovesTest < ApplicationSystemTestCase
  setup do
    @lofe = loves(:one)
  end

  test "visiting the index" do
    visit loves_url
    assert_selector "h1", text: "Loves"
  end

  test "creating a Love" do
    visit loves_url
    click_on "New Love"

    fill_in "Book", with: @lofe.book
    fill_in "Chapter", with: @lofe.chapter
    fill_in "Word", with: @lofe.word
    click_on "Create Love"

    assert_text "Love was successfully created"
    click_on "Back"
  end

  test "updating a Love" do
    visit loves_url
    click_on "Edit", match: :first

    fill_in "Book", with: @lofe.book
    fill_in "Chapter", with: @lofe.chapter
    fill_in "Word", with: @lofe.word
    click_on "Update Love"

    assert_text "Love was successfully updated"
    click_on "Back"
  end

  test "destroying a Love" do
    visit loves_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Love was successfully destroyed"
  end
end

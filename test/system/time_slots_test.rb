require "application_system_test_case"

class TimeSlotsTest < ApplicationSystemTestCase
  setup do
    @time_slot = time_slots(:one)
  end

  test "visiting the index" do
    visit time_slots_url
    assert_selector "h1", text: "Time Slots"
  end

  test "creating a Time slot" do
    visit time_slots_url
    click_on "New Time Slot"

    fill_in "Date", with: @time_slot.Date
    fill_in "Endtime", with: @time_slot.EndTime
    fill_in "Starttime", with: @time_slot.StartTime
    click_on "Create Time slot"

    assert_text "Time slot was successfully created"
    click_on "Back"
  end

  test "updating a Time slot" do
    visit time_slots_url
    click_on "Edit", match: :first

    fill_in "Date", with: @time_slot.Date
    fill_in "Endtime", with: @time_slot.EndTime
    fill_in "Starttime", with: @time_slot.StartTime
    click_on "Update Time slot"

    assert_text "Time slot was successfully updated"
    click_on "Back"
  end

  test "destroying a Time slot" do
    visit time_slots_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Time slot was successfully destroyed"
  end
end

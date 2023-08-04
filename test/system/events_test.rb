require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  setup do
    @event = events(:one)
  end

  test "visiting the index" do
    visit events_url
    assert_selector "h1", text: "Events"
  end

  test "should create event" do
    visit events_url
    click_on "New event"

    fill_in "About", with: @event.about
    fill_in "Address", with: @event.address
    fill_in "Address2", with: @event.address2
    fill_in "City", with: @event.city
    fill_in "Event date", with: @event.event_date
    fill_in "Event name", with: @event.event_name
    fill_in "Start time", with: @event.start_time
    fill_in "State", with: @event.state
    fill_in "Website", with: @event.website
    fill_in "Zip code", with: @event.zip_code
    click_on "Create Event"

    assert_text "Event was successfully created"
    click_on "Back"
  end

  test "should update Event" do
    visit event_url(@event)
    click_on "Edit this event", match: :first

    fill_in "About", with: @event.about
    fill_in "Address", with: @event.address
    fill_in "Address2", with: @event.address2
    fill_in "City", with: @event.city
    fill_in "Event date", with: @event.event_date
    fill_in "Event name", with: @event.event_name
    fill_in "Start time", with: @event.start_time
    fill_in "State", with: @event.state
    fill_in "Website", with: @event.website
    fill_in "Zip code", with: @event.zip_code
    click_on "Update Event"

    assert_text "Event was successfully updated"
    click_on "Back"
  end

  test "should destroy Event" do
    visit event_url(@event)
    click_on "Destroy this event", match: :first

    assert_text "Event was successfully destroyed"
  end
end

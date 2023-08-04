require "test_helper"

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url
    assert_response :success
  end

  test "should get new" do
    get new_event_url
    assert_response :success
  end

  test "should create event" do
    assert_difference("Event.count") do
      post events_url, params: { event: { about: @event.about, address: @event.address, address2: @event.address2, city: @event.city, event_date: @event.event_date, event_name: @event.event_name, start_time: @event.start_time, state: @event.state, website: @event.website, zip_code: @event.zip_code } }
    end

    assert_redirected_to event_url(Event.last)
  end

  test "should show event" do
    get event_url(@event)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_url(@event)
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { about: @event.about, address: @event.address, address2: @event.address2, city: @event.city, event_date: @event.event_date, event_name: @event.event_name, start_time: @event.start_time, state: @event.state, website: @event.website, zip_code: @event.zip_code } }
    assert_redirected_to event_url(@event)
  end

  test "should destroy event" do
    assert_difference("Event.count", -1) do
      delete event_url(@event)
    end

    assert_redirected_to events_url
  end
end

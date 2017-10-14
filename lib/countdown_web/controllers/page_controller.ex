defmodule CountdownWeb.PageController do
  use CountdownWeb, :controller

  alias Countdown.Events

  def index(conn, _params) do
    events = Events.list_future_events()
    render conn, "index.html", events: events
  end
end

defmodule CountdownWeb.PageController do
  use CountdownWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

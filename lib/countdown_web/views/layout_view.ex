defmodule CountdownWeb.LayoutView do
  use CountdownWeb, :view

  def cookies(conn, cookie_name) do
      conn.cookies[cookie_name]
  end
end

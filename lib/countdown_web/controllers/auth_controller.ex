defmodule CountdownWeb.AuthController do
  use CountdownWeb, :controller
  alias Auth0Ex.Authentication
  alias CountdownWeb.Router.Helpers

  def index(conn, _params) do
    authCode = Authentication.Token.auth_code(
      Application.get_env(:auth0_ex, :mgmt_client_id),
      Application.get_env(:auth0_ex, :mgmt_client_secret),
      conn.query_params["code"],
      Helpers.url(conn) <> "/auth"
    )

    redirect_uri = if conn.params["redirect"], do: conn.params["redirect"], else: "/"

    case authCode do
      {:ok, response} -> conn
        |> put_resp_cookie("jwt", response["id_token"])
        |> redirect(to: redirect_uri)
      {:error} -> conn
        |> redirect(to: "/")
      {:error, errrors, 400} -> conn
        |> redirect(to: "/")
    end
  end

  def logout(conn, _params) do
    conn
      |> delete_resp_cookie("jwt")
      |> redirect(to: "/")
  end

  def login(conn, _params) do
    redirect_uri = if conn.params["redirect"], do: conn.params["redirect"], else: "/"

    conn
      |> redirect(external: "https://" <> Application.get_env(:auth0_ex, :domain) <> "/login?client=7XvJWFYYk7lRsgdS45vDukqUkopkcPhD&redirect_uri=" <> Helpers.url(conn) <> "/auth?redirect=" <> redirect_uri)
      |> halt
  end
end

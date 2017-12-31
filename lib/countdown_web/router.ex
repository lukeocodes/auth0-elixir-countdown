defmodule CountdownWeb.Router do
  use CountdownWeb, :router
  require Ueberauth

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/auth", CountdownWeb do
    pipe_through :browser

    get "/:provider", AuthController, :request
    get "/:provider/callback", AuthController, :callback
    post "/:provider/callback", AuthController, :callback
  end

  scope "/", CountdownWeb do
    pipe_through :browser # Use the default browser stack
    get "/", PageController, :index

    get "/logout", AuthController, :logout

    resources "/events", EventController
  end
end

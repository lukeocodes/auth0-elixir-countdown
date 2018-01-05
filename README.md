# Countdown

## Preparation

### Sign Up for Auth0

You'll need an [Auth0](https://auth0.com) account to manage authentication. You can sign up for a <a href="https://auth0.com/signup">free account here</a>. Next, set up an Auth0 Client and API so Auth0 can interface with your app and API.

### Set Up a Client App

1. Go to your [**Auth0 Dashboard**](https://manage.auth0.com/#/) and click the "[create a new client](https://manage.auth0.com/#/clients/create)" button. 
2. Name your new app and select "Regular Web Applications". 
3. In the **Settings** for your new Auth0 client app, add `http://0.0.0.0:4000/auth/auth0/callback` to the **Allowed Callback URLs**.
4. Click the "Save Changes" button.
5. If you'd like, you can [set up some social connections](https://manage.auth0.com/#/connections/social). You can then enable them for your app in the **Client** options under the **Connections** tab. The example shown in the screenshot above utilizes username/password database, Facebook, Google, and Twitter.

> Note: On the **OAuth** tab of **Advanced Settings** (at the bottom of the **Settings** section) you can see the **JsonWebToken Signature Algorithm** is set to `RS256`. This is now the default, [read more about RS256 vs HS256 here](https://community.auth0.com/questions/6942/jwt-signing-algorithms-rs256-vs-hs256).

## Getting ready

### Install Elixir

Follow the Elixir install guide here: http://elixir-lang.org/install.html

Next we run a `mix` command to install the Hex package manager. Mix is a build tool that provides tasks for creating, compiling, and testing Elixir projects, managing its dependencies, and more. If you know Ruby well, Mix is Rake, Bundler, and RubyGems combined.

Now use mix to install hex: https://hexdocs.pm/mix/1.0.5/Mix.Tasks.Local.Hex.html

```bash
    $ mix local.hex
```

### Install Phoenix

Phoenix needs at least Elixir 1.4 and Erlang 18 or later, run:

```bash
    $ elixir -v
    Erlang/OTP 19 [erts-8.3] [source] [64-bit] [smp:8:8] [async-threads:10] [hipe] [kernel-poll:false] [dtrace]

    Elixir 1.4.2
```

Now we can install Phoenix v1.3.0:

```bash
    $ mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new-1.3.0.ez
```

### PostgreSQL

Follow the instructions here: http://postgresguide.com/setup/install.html

Set up your database config by editing `config/dev.exs` (and `config/{env}.exs` where appropriate), and edit the username and password near the bottom of the file. (They will both be set to “postgres” by default.)

```erlang
    ...
    config :countdown, Countdown.Repo,
      adapter: Ecto.Adapters.Postgres,
      username: "postgres",
      password: "postgres",
      database: "elixir",
    ...
```

### NPM

npm may also be required as well (dependant on your operating system, you might already have it): https://docs.npmjs.com/getting-started/installing-node

### Other databases

If you choose to use another database provider, make sure you edit the configuration appropriately: https://phoenixframework.readme.io/docs/using-mysql

## To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`.
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix.
  
    ```bash
    $ AUTH0_DOMAIN=<Your domain> \
      AUTH0_CLIENT_ID=<Your client ID> \
      AUTH0_CLIENT_SECRET=<Your client secret> \
      mix phx.server
    ```

Now you can visit [`http://localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
  * Auth0 for authentication: https://www.auth0.com

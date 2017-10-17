# Countdown

## Preparation

### Sign Up for Auth0

You'll need an [Auth0](https://auth0.com) account to manage authentication. You can sign up for a [free account here](javascript:signup\(\)). Next, set up an Auth0 Client and API so Auth0 can interface with your app and API.

#### Set Up a Client App

1. Go to your [**Auth0 Dashboard**](https://manage.auth0.com/#/) and click the "[create a new client](https://manage.auth0.com/#/clients/create)" button. 
2. Name your new app and select "Regular Web Applications". 
3. In the **Settings** for your new Auth0 client app, add `http://0.0.0.0:4000/auth` to the **Allowed Callback URLs** and `http://0.0.0.0:4000/auth` to the **Allowed Origins (CORS)**. *You might need to add `http://localhost:4000/auth` depending on how your version of Phoenix renders the routes*.
4. Scroll down to the bottom of the **Settings** section and click "Show Advanced Settings". Choose the **OAuth** tab and change the **JsonWebToken Signature Algorithm** to `RS256`.
5. If you'd like, you can [set up some social connections](https://manage.auth0.com/#/connections/social). You can then enable them for your app in the **Client** options under the **Connections** tab. The example shown in the screenshot above utilizes username/password database, Facebook, Google, and Twitter.

![Auth0 hosted login screen](https://cdn2.auth0.com/blog/angular-aside/angular-aside-login.jpg)

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
  * Start Phoenix endpoint with `AUTH0_DOMAIN=<your domain> AUTH0_MGMT_CLIENT_ID=<your client id> AUTH0_MGMT_CLIENT_SECRET=<your secret> mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
  * Auth0 for authentication: https://www.auth0.com

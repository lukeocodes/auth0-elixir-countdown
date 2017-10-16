# Countdown

## Preparation

### Sign Up for Auth0

You'll need an [Auth0](https://auth0.com) account to manage authentication. You can sign up for a [free account here](javascript:signup\(\)). Next, set up an Auth0 Client and API so Auth0 can interface with your app and API.

### Set Up a Client App

1. Go to your [**Auth0 Dashboard**](https://manage.auth0.com/#/) and click the "[create a new client](https://manage.auth0.com/#/clients/create)" button. 
2. Name your new app and select "Regular Web Applications". 
3. In the **Settings** for your new Auth0 client app, add `http://0.0.0.0:4000/auth` to the **Allowed Callback URLs** and `http://0.0.0.0:4000/auth` to the **Allowed Origins (CORS)**. *You might need to add `http://localhost:4000/auth` depending on how your version of Phoenix renders the routes*.
4. Scroll down to the bottom of the **Settings** section and click "Show Advanced Settings". Choose the **OAuth** tab and change the **JsonWebToken Signature Algorithm** to `RS256`.
5. If you'd like, you can [set up some social connections](https://manage.auth0.com/#/connections/social). You can then enable them for your app in the **Client** options under the **Connections** tab. The example shown in the screenshot above utilizes username/password database, Facebook, Google, and Twitter.

![Auth0 hosted login screen](https://cdn2.auth0.com/blog/angular-aside/angular-aside-login.jpg)

### Elixir 1.4 or later

Phoenix is written in Elixir. We won’t get far in a Phoenix app without it! The Elixir site maintains a great [Installation Page](https://elixir-lang.org/install.html) to help.

If we have just installed Elixir for the first time, we will need to install the Hex package manager as well. Hex is necessary to get a Phoenix app running (by installing dependencies) and to install any extra dependencies we might need along the way.

Here’s the command to install Hex (If you have Hex already installed, it will upgrade Hex to the latest version):

    $ mix local.hex

### Erlang 18 or later
Elixir code compiles to Erlang byte code to run on the Erlang virtual machine. Without Erlang, Elixir code has no virtual machine to run on, so we need to install Erlang as well.

When we install Elixir using instructions from the Elixir [Installation Page](https://elixir-lang.org/install.html), we will usually get Erlang too. If Erlang was not installed along with Elixir, please see the [Erlang Instructions](https://elixir-lang.org/install.html#installing-erlang) section of the Elixir Installation Page for instructions.

People using Debian-based systems may need to explicitly install Erlang to get all the needed packages.

    $ wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
    $ sudo apt-get update
    $ sudo apt-get install esl-erlang

### Phoenix
To check that we are on Elixir 1.4 and Erlang 18 or later, run:

    $ elixir -v
    Erlang/OTP 19 [erts-8.3] [source] [64-bit] [smp:8:8] [async-threads:10] [hipe] [kernel-poll:false] [dtrace]

    Elixir 1.4.2
    
### PostgreSQL
PostgreSQL is a relational database server. The PostgreSQL wiki has [nstallation guides](https://wiki.postgresql.org/wiki/Detailed_installation_guides) to help get set up.

Postgrex is a direct Phoenix dependency, and it will be automatically installed along with the rest of our dependencies as we start our app.

## To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`. ***Postgres is required before Ecto commands can be run.***
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

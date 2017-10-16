# Countdown

## Preparation

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

## To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
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

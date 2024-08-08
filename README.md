# Level All Coding Interview

## Blog App

For our technical interview, we'll be working in a basic blog application. This repo represents a new Phoenix/LiveView application.

## Dependencies Setup

* Install Postgres: Please ensure you have a working copy of Postgres 16+ installed. For MacOS, we recommend using https://postgresapp.com
* Run `asdf install` to install the proper versions of Elixir and Erlang listed in the `.tool-versions` file (or use a dependency manager of your choice)
* Install Phoenix: `mix archive.install hex phx_new`
* Run `mix setup` to install and setup dependencies
* Create the database (ensure Postgres is running): `mix ecto.create`
* Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

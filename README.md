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

## Instructions

This is a simple blog application. It consists of a single context (`Posts`), and two schemas: `Post` and `Comment`.

Everything has been set up for you. It is your job to retrieve posts from the database and display them on the home page and the post detail page.

1. Visit `localhost:4000`
2. Insert a couple of new posts
3. Implement the `list_posts` function
4. Click on a post from the index page
5. Load the post and all of its comments
6. Display the comments on the post page

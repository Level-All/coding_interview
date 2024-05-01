# LevelAll Backend Software Engineer Interview

## Blog App

You have been asked to help build a technical blog for LevelAll. We'd like to host it ourselves and build it with Phoenix LiveView.

The blog will consist of Posts, Comments, and Users

## Dependencies Setup

  * Install Postgres: Please ensure you have a working copy of Postgres 16+ installed. For MacOS, we recommend using https://postgresapp.com
  * Install Phoenix: `mix archive.install hex phx_new`
  * Create the application: `mix phx.new blog --install`
  * Navigate to the directory: `cd blog`
  * Run `asdf install` to install the proper versions of Elixir and Erlang
  * Create the database (ensure Postgres is running): `mix ecto.create`
  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Instructions

1. Add the ability to add a `Post` schema to the database through a `Posts` context
2. Add users to the system. Posts must have a User associated with them before they may be inserted into the database.
3. Write an ecto query to fetch posts, along with their authors, from the database
4. Add comments to posts. A post can have many comments, and a comment may belong to only one post. A comment is associated with a specific user.
5. Adjust the Posts query to retrieve only the 3 most recent comments for each post

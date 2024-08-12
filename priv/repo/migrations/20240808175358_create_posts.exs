defmodule Blog.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :text
      add :body, :text
      add :is_published, :boolean, default: false, null: false

      timestamps()
    end
  end
end

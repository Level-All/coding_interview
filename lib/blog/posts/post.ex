defmodule Blog.Posts.Post do
  use Ecto.Schema
  import Ecto.Changeset

  alias Blog.Posts.Comment

  schema "posts" do
    field :title, :string
    field :body, :string
    field :is_published, :boolean, default: false

    has_many :comments, Comment

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :body, :is_published])
    |> validate_required([:title, :body, :is_published])
  end
end

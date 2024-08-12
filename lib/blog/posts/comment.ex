defmodule Blog.Posts.Comment do
  use Ecto.Schema
  import Ecto.Changeset

  alias Blog.Posts.Post

  schema "comments" do
    field :body, :string
    belongs_to :post, Post

    timestamps()
  end

  @doc false
  def changeset(comment, attrs) do
    comment
    |> cast(attrs, [:body, :post_id])
    |> validate_required([:body, :post_id])
  end
end

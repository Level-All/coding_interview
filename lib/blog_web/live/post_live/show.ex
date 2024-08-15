defmodule BlogWeb.PostLive.Show do
  use BlogWeb, :live_view

  alias Blog.Posts
  alias Blog.Posts.Comment

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(%{"id" => id}, _, socket) do
    comment = %Comment{post_id: id}

    {:noreply,
     socket
     |> assign(:page_title, page_title(socket.assigns.live_action))
     |> assign(:post, Posts.get_post!(id))
     |> assign(:comment, comment)
     |> assign_new(:form, fn ->
       to_form(Posts.change_comment(comment))
     end)}
  end

  @impl true
  def handle_event("validate", %{"comment" => comment_params}, socket) do
    changeset = Posts.change_comment(socket.assigns.comment, comment_params)
    {:noreply, assign(socket, form: to_form(changeset, action: :validate))}
  end

  def handle_event("save", %{"comment" => comment_params}, socket) do
    case Posts.create_comment(comment_params) do
      {:ok, _comment} ->
        comment = %Comment{post_id: socket.assigns.post.id}

        {:noreply,
         socket
         |> assign(:comment, comment)
         |> assign(:form, fn ->
           to_form(Posts.change_comment(comment))
         end)
         |> put_flash(:info, "Comment created successfully")}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign(socket, form: to_form(changeset))}
    end
  end

  defp page_title(:show), do: "Show Post"
  defp page_title(:edit), do: "Edit Post"
end

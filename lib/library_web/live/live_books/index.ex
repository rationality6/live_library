defmodule LibraryWeb.LiveBooks.Index do
  # use Phoenix.LiveView
  use LibraryWeb, :live_view

  alias Library.Books.Book
  alias Library.Repo

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :list_books, list_books())}
  end

  defp list_books do
    Book |> Repo.all()
  end

end
